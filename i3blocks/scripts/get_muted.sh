FEEDBACK=`pamixer --get-mute`
if [[ $FEEDBACK == "true" ]]; then
  echo "muted";
else
  echo ""
fi
