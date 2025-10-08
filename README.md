#  ZKN-PRIVACYHW

Tools to protect the private element from malware when signing using eddsa-poseidon over baby-jujub curve.


## SIDELOADING THE APP

First ledger blue is required.

```
pip3 install ledgerblue
```

then to side load the app, just run the following command (here for nano Splus):

```
python3 -m ledgerblue.loadApp --targetId 0x33100004 --targetVersion="" --apiLevel 22 --fileName nanosp/app.hex --appName "ZKNOXHW" --appFlags 0x0 --delete --tlv --dataSize $((0x`cat debug/app.map | grep _envram_data | tr -s ' ' | cut -f2 -d' ' |cut -f2 -d'x' ` - 0x`cat debug/app.map | grep _nvram_data | tr -s ' ' | cut -f2 -d' ' | cut -f2 -d'x'`)) --installparamsSize $((0x`cat debug/app.map | grep _einstall_parameters | tr -s ' ' | cut -f2 -d' ' |cut -f2 -d'x'` - 0x`cat debug/app.map | grep _install_parameters | tr -s ' ' | cut -f2 -d' ' |cut -f2 -d'x'`))

```



## SENDING COMMAND TO THE LEDGER DEVICE

The ledger hid transport package is required

```
npm install @ledgerhq/hw-transport-node-hid
```

Then use proper apdu 

## APDU

### EDDSA-POSEIDON-SIGN

Sign using RFC8032 EDDSA algorithm, adapted to work over babyjujub curve with poseidon5 hash. Use the following 6 bytes prefix, followed by private key and message, each defined over 32 bytes.

```
e00c00004102 | prv(32) | msg(32)
```


## JAVASCRIPT

- The ledger-apdu.js file enable to launch arbitrary APDUs to the device.
- eddsa_apdugencheck.js provide proof of compliance between circomlibjs and the app:
    - it generates a random private key, message, then
        - derivate the corresponding public key and signature of message by the private key with circomlibjs
        - verify consistency of the signature/verification process
        - send the corresponding APDU to ledger device
        - ensure circomlibjs and Ledger device output are equal 



## NOTES

- For now, as the secret key is passed in the command, no additional security is gained using the Ledger. This require to add a key derivation to be implemented. This only illustrate the feasibility to replace the witness generation of circomlib/gnark.
- Code is still WIP, it will be opened when cleaned. Don't be stupid, do not use a closed unaudited code to protect funds. This work is for privacy experiments only.



## FUTURE DEVELOPMENTS

- Integrate with libMPC, a Musig2/FROST implementation to provide multisig/threshold signature capacity
- Integrate Bandersnatch to increase security level

