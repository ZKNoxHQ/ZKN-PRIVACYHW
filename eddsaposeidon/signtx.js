// dilithium-apdu.js
//
// a Javascript interface to sign a message with a Ledger device using Post-Quantum Dilithium
//
const TransportNodeHid = require("@ledgerhq/hw-transport-node-hid").default;

const fs = require('fs');

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

        // 1. Init command
        // For the secret key and public key
        apdus.push({ name: "apdu_get_insecure_secret", command: "E016000015058000002c80002373800000000000000000000000" });
        apdus.push({ name: "apdu_get_insecure_public", command: "E01800000102" });
        // for the signing command
        // PYTHON OUTPUT////////////////
        // First APDU
        apdus.push({ name: "sign_tx_init", command: "E006008015058000002c80002373800000000000000000000000" });
        // Intermediate APDU
        apdus.push({ name: "sign_tx_0", command: "E0060180FF0000000000000001cafecafecafecafecafecafecafecafecafecafe000000000000029afd35010a48656c6c6f2066726f6d205a4b4e4f582e20576520617265206865726520666f7220696d706c656d656e74696e672073656375726520686172647761726520666f7220457468657265756d210a48656c6c6f2066726f6d205a4b4e4f582e20576520617265206865726520666f7220696d706c656d656e74696e672073656375726520686172647761726520666f7220457468657265756d210a48656c6c6f2066726f6d205a4b4e4f582e20576520617265206865726520666f7220696d706c656d656e74696e67207365637572652068617264776172" });
        // Final APDU
        apdus.push({ name: "sign_tx_final", command: "E00602005d6520666f7220457468657265756d210a48656c6c6f2066726f6d205a4b4e4f582e20576520617265206865726520666f7220696d706c656d656e74696e672073656375726520686172647761726520666f7220457468657265756d210a" });
        // PYTHON OUTPUT////////////////

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