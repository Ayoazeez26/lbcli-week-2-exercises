# Create a SegWit address.
# Add funds to the address.
# Return only the Address

NEW_ADDR=$(bitcoin-cli -regtest getnewaddress "" "bech32")
bitcoin-cli -regtest generatetoaddress 101 "$NEW_ADDR" > /dev/null
bitcoin-cli -regtest sendtoaddress "$NEW_ADDR" 0.01

echo $NEW_ADDR