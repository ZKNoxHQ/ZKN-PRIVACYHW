// dilithium-apdu.js
//
// a Javascript interface to sign a message with a Ledger device using Post-Quantum Dilithium
//
const TransportNodeHid = require("@ledgerhq/hw-transport-node-hid").default;

const fs = require('fs');

// ---------------------------------------------------------
// Constants
// ---------------------------------------------------------
const UINT64_MAX = (2n ** 64n) - 1n;
const UINT32_MAX = (2n ** 32n) - 1n;
const UINT16_MAX = (2n ** 16n) - 1n;

// ---------------------------------------------------------
// write_varint
// ---------------------------------------------------------
function writeVarint(n) {
    if (n < 0xFC) {
        return Buffer.from([n]);
    }

    if (n <= Number(UINT16_MAX)) {
        const b = Buffer.alloc(2);
        b.writeUInt16LE(n);
        return Buffer.concat([Buffer.from([0xFD]), b]);
    }

    if (n <= Number(UINT32_MAX)) {
        const b = Buffer.alloc(4);
        b.writeUInt32LE(n);
        return Buffer.concat([Buffer.from([0xFE]), b]);
    }

    if (n <= UINT64_MAX) {
        const b = Buffer.alloc(8);
        b.writeBigUInt64LE(BigInt(n));
        return Buffer.concat([Buffer.from([0xFF]), b]);
    }

    throw new Error("Can't write varint: " + n);
}

// ---------------------------------------------------------
// serialize
// ---------------------------------------------------------
function serialize(nonce, to, value, memo) {
    const bNonce = Buffer.alloc(8);
    bNonce.writeBigUInt64BE(BigInt(nonce));

    const bValue = Buffer.alloc(8);
    bValue.writeBigUInt64BE(BigInt(value));

    return Buffer.concat([
        bNonce,
        to,
        bValue,
        writeVarint(memo.length),
        memo
    ]);
}

// ---------------------------------------------------------
// split_message
// ---------------------------------------------------------
function splitMessage(message, maxSize) {
    const out = [];
    for (let i = 0; i < message.length; i += maxSize) {
        out.push(message.slice(i, i + maxSize));
    }
    return out;
}


async function SignWithoutSecret() {
    console.time("");
    let transport;
    try {
        // List available devices
        const devices = await TransportNodeHid.list();
        console.log("Available devices:", devices);
        if (devices.length === 0) {
            console.log("No Ledger device found. Make sure it's connected and unlocked.");
            return;
        }

        // Connect to the first available device
        transport = await TransportNodeHid.open(devices[0]);
        console.log("Connected to Ledger Device");

        // Build APDU list for signing
        const apdus = [];

        // For the secret key and public key
        apdus.push({ name: "apdu_get_insecure_secret", command: "E016000015058000002c80002373800000000000000000000000" });
        apdus.push({ name: "apdu_get_insecure_public", command: "E01800000102" });

        // ---------------------------------------------------------
        // Inputs (same as Python)
        // ---------------------------------------------------------

        const nonce = 1;
        const to = Buffer.from("cafecafecafecafecafecafecafecafecafecafe", "hex");
        const value = 666;
        const memo = Buffer.from(`
Hello from ZKNOX. We are here for implementing secure hardware for Ethereum!
Hello from ZKNOX. We are here for implementing secure hardware for Ethereum!
Hello from ZKNOX. We are here for implementing secure hardware for Ethereum!
Hello from ZKNOX. We are here for implementing secure hardware for Ethereum!
`, "ascii");

        const dataToBeSigned = serialize(nonce, to, value, memo);

        // same APDU1 as your Python:
        const apdu1 = "E006008015058000002c80002373800000000000000000000000";

        apdus.push({ name: "sign_0", command: apdu1 });

        // split message
        const msgs = splitMessage(dataToBeSigned, 255);


        for (let i = 0; i < msgs.length - 1; i++) {
            const msg = msgs[i];
            apdus.push({ name: `sign_${i + 1}`, command: `E006${(i + 1).toString(16).padStart(2, "0")}80FF${msg.toString("hex")}` });
        }

        const last = msgs[msgs.length - 1];
        apdus.push({ name: `sign_final`, command: `E006${msgs.length.toString(16).padStart(2, "0")}00${last.length.toString(16).padStart(2, "0")}${last.toString("hex")}` });

        // Execute all signing APDUs
        for (const { name, command } of apdus) {
            console.log(`\nSending APDU (${name}):`, command);

            const apduBuffer = Buffer.from(command, "hex");
            console.time("BenchAPDU")
            try {
                const response = await transport.exchange(apduBuffer);
                const responseHex = response.toString("hex");
                console.log("Response received:", responseHex);

                const statusWord = response.slice(-2).toString("hex");
                const data = response.slice(0, -2).toString("hex");
                console.log(data);
                // console.log("Data:", data);
                // console.log("Status Word:", statusWord);

                if (statusWord === "9000") {
                    console.log("✅ APDU executed successfully");
                } else {
                    console.log("❌ Error - Status Word:", statusWord);
                }
            } catch (err) {
                console.error(`❌ Error sending APDU (${name}):`, err.message);
            }
            console.timeEnd("BenchAPDU")
        }

    } catch (error) {
        console.error("Error with Ledger transport:", error.message);
        if (error.message.includes("cannot open device")) {
            console.log("Make sure the Ledger is unlocked and not being used by another application");
        } else if (error.message.includes("No device found")) {
            console.log("Make sure the Ledger is connected via USB");
        }
    } finally {
        if (transport) {
            await transport.close();
            console.log("\nConnection closed");
        }
    }
}

// Example usage 
SignWithoutSecret().catch(console.error);