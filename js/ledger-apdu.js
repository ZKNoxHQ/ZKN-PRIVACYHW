// ledger-apdu.js
import TransportNodeHid from "@ledgerhq/hw-transport-node-hid";

export async function sendAPDU(apdu) {
  let transport;
  
  try {
    // Use TransportNodeHid.default if the import structure requires it
    const TransportImpl = TransportNodeHid.default || TransportNodeHid;
    
    const devices = await TransportImpl.list();
    console.log("Available devices:", devices);
    
    if (devices.length === 0) {
      console.log("No Ledger device found. Make sure it's connected and unlocked.");
      return { data: "", statusWord: "0000", success: false };
    }
    
    transport = await TransportImpl.open(devices[0]);
    console.log("Connected to Ledger Nano");
    
    const apduBuffer = Buffer.from(apdu, "hex");
    
    console.log("Sending APDU:", apdu);
    const response = await transport.exchange(apduBuffer);
    
    const responseHex = response.toString("hex");
    
    const formattedResponse = responseHex.match(/.{1,64}/g)?.join('\n') || responseHex;
    console.log("Response received:\n" + formattedResponse);
    
    const statusWord = response.slice(-2).toString("hex");
    const data = response.slice(0, -2).toString("hex");
    
    console.log("Data:", data);
    console.log("Status Word:", statusWord);
    
    if (statusWord === "9000") {
      console.log("✅ APDU executed successfully");
    } else {
      console.log("❌ Error - Status Word:", statusWord);
    }
    
    return { data, statusWord, success: statusWord === "9000" };
    
  } catch (error) {
    console.error("Error sending APDU:", error.message);
    
    if (error.message.includes("cannot open device")) {
      console.log("Make sure the Ledger is unlocked and not being used by another application");
    } else if (error.message.includes("No device found")) {
      console.log("Make sure the Ledger is connected via USB");
    }
    
    throw error;
    
  } finally {
    if (transport) {
      await transport.close();
      console.log("Connection closed");
    }
  }
}

export const APDUS = {
  apdu_eddsa_sign_ok: "e00c0000410200a2ac13cdba830a55bf407ea70c5fd29312c17060f07d35fea5de47d6c03ed28c1f26718227707c6e5c61417b47daccafabca9f574c16e1521dd6a9c70d8405",
};