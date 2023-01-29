LOCAL_BLOCK=$(curl --silent --location --request POST http://127.0.0.1:9000/ \
  --header 'Content-Type: application/json' \
  --data-raw '{ "jsonrpc":"2.0", "method":"sui_getTotalTransactionNumber","id":1}'| jq .result)

TESTNET_BLOCK=$(curl --silent --location --request POST https://fullnode.testnet.sui.io:443 \
  --header 'Content-Type: application/json' \
  --data-raw '{ "jsonrpc":"2.0", "method":"sui_getTotalTransactionNumber","id":1}' | jq .result)

echo "==============================="
echo "Your block:    $LOCAL_BLOCK"
echo "Network block: $TESTNET_BLOCK"
echo "==============================="
