is_muted=`pamixer --get-mute`
volume=`pamixer --get-volume | awk '{printf "["; print $1"%]"}'`

if [[ "$is_muted" == "true" ]]; then
    echo "[--%]"
else 
    echo $volume
fi
