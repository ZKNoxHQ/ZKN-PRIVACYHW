from ragger.bip import pack_derivation_path

UINT64_MAX: int = 2**64-1
UINT32_MAX: int = 2**32-1
UINT16_MAX: int = 2**16-1


def write_varint(n: int) -> bytes:
    if n < 0xFC:
        return n.to_bytes(1, byteorder="little")

    if n <= UINT16_MAX:
        return b"\xFD" + n.to_bytes(2, byteorder="little")

    if n <= UINT32_MAX:
        return b"\xFE" + n.to_bytes(4, byteorder="little")

    if n <= UINT64_MAX:
        return b"\xFF" + n.to_bytes(8, byteorder="little")

    raise ValueError(f"Can't write to varint: '{n}'!")


def serialize(nonce, to, value, memo) -> bytes:
    return b"".join([
        nonce.to_bytes(8, byteorder="big"),
        to,
        value.to_bytes(8, byteorder="big"),
        write_varint(len(memo)),
        memo
    ])


nonce = 1
to = bytes.fromhex("cafecafecafecafecafecafecafecafecafecafe")
value = 666
memo = """
Hello from ZKNOX. We are here for implementing secure hardware for Ethereum!
Hello from ZKNOX. We are here for implementing secure hardware for Ethereum!
Hello from ZKNOX. We are here for implementing secure hardware for Ethereum!
Hello from ZKNOX. We are here for implementing secure hardware for Ethereum!
""".encode(
    "ascii")

data_to_be_signed = serialize(nonce, to, value, memo)

# first apdu includes the BIP-formatted path:
path = "m/44'/9075'/0'/0/0"
pack_path = pack_derivation_path(path)
apdu_1 = "E0060080{:02x}{}".format(len(pack_path), pack_path.hex())
# or just apdu_1 = "E006008015058000002c80002373800000000000000000000000" if you don't want to use ragger

# split the message in 255B chunks


def split_message(message: bytes, max_size: int):
    return [message[x:x + max_size] for x in range(0, len(message), max_size)]


msgs = split_message(data_to_be_signed, 255)

print("// First APDU")
print("apdus.push({name: \"sign_tx_init\", command: \"" + apdu_1 + "\"});")
for (i, msg) in enumerate(msgs[:-1]):
    print("// Intermediate APDU")
    print("apdus.push({{ name: \"sign_tx_{}\", command: \"E006{:02x}80FF{}\"}});".format(
        i, i+1, msg.hex()))
print("// Final APDU")
print("apdus.push({{ name: \"sign_tx_final\", command: \"E006{:02x}00{:02x}{}\"}});".format(
    len(msgs),
    len(msgs[-1]),
    msgs[-1].hex()
))
