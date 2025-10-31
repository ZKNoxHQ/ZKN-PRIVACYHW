# Eddsa Poseidon application for Nano


## SIDELOADING THE APP

Loading the app requires a few dependencies we install in a virtual environment:

```bash
python3 -m virtualenv ledger
# Install Ledgerblue (tool to load the app)
ledger/bin/python3 -m pip install ledgerblue
```

In order to load the app, use the following command:
- FLEX:
    ```
    # Load the app on the flex.
    ledger/bin/python3 -m ledgerblue.runScript --scp --fileName flex/app.apdu --elfFile flex/app.elf
    ```
- NANOS+:
    ```
    # Load the app on the nano s+.
    ledger/bin/python3 -m ledgerblue.runScript --scp --fileName nanosp/app.apdu --elfFile nanosp/app.elf
    ```

TODO SIMON: idk how to see the identifier of the app, should be `00de7911c076d3e4f6180de947af6bb2950722f3afe5729326d3ce3fe26c164a`.

<!-- First ledger blue is required.

```
pip3 install ledgerblue
```

then to side load the app, just run the following command (here for nano Splus):

```
python3 -m ledgerblue.loadApp --targetId 0x33100004 --targetVersion="" --apiLevel 22 --fileName nanosp/app.hex --appName "ZKNOXHW" --appFlags 0x0 --delete --tlv --dataSize $((0x`cat debug/app.map | grep _envram_data | tr -s ' ' | cut -f2 -d' ' |cut -f2 -d'x' ` - 0x`cat debug/app.map | grep _nvram_data | tr -s ' ' | cut -f2 -d' ' | cut -f2 -d'x'`)) --installparamsSize $((0x`cat debug/app.map | grep _einstall_parameters | tr -s ' ' | cut -f2 -d' ' |cut -f2 -d'x'` - 0x`cat debug/app.map | grep _install_parameters | tr -s ' ' | cut -f2 -d' ' |cut -f2 -d'x'`))

```

Then verify the displayed hash is as expected (in case you didn't read first warning), this is displayed during installation as "Identifier" of the app.

eddsaposeidon: 00de7911c076d3e4f6180de947af6bb2950722f3afe5729326d3ce3fe26c164a -->

## TESTING AGAINST POSEIDON CIRCOMLIB

First, go to `js/`:
```bash
cd js/
```

Intall the required packages
```
npm install @noble/hashes @noble/curves ffjavascript circomlibjs 
```

run the following command:
```
node circomlib/eddsa_apdugenncheck.js
```
(check your USB setting, sudo might be necessary)

The test run and display both Nano and Circomlib result:
<img width="1614" height="1233" alt="image" src="https://github.com/user-attachments/assets/a4192df4-50a2-4e36-a5a3-1654cb28f0f3" />

## INTEGRATION INTO WALLET

The call to the ledger device is performed by
```
ledger_eddsaSignPoseidon(privateKey, montgomeryBytes)
```


