WIFI_NAME=`nmcli -w=1 dev | head -n2 | tail -n1 | awk '{ print $4 }'`
WIFI_QUALITY=`nmcli -w=1 dev wifi list | grep "$WIFI_NAME" | head -n1 | awk '{ print $7 "%"}'`
echo "$WIFI_NAME: $WIFI_QUALITY"
