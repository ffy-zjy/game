#!/bin/bash
while true;do
echo "************************************************************"
date
# ==============================================================
userID=xxx
gameID=xxx

REFUND_ID=`cat server.log | grep "Refund" | awk -F 'ID: ' 'END{print $2}'`

echo $REFUND_ID
curl -i -H "Accept:application/json" -X POST -d "{\"user_id\":xxx,\"game_id\":xxx,\"refund_id\":\"${REFUND_ID}\"}" http://onlyellow.cstor.cn:18888/launch_refund


sleep 2;
done