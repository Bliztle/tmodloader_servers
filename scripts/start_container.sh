docker pull jacobsmile/tmodloader1.4:$IMAGE_VERSION

echo $DATA_PATH

docker run -d -p $PORT:$PORT --name "$NAME" --rm \
  -v "$DATA_PATH":/data \
  -e TMOD_SHUTDOWN_MESSAGE="$TMOD_SHUTDOWN_MESSAGE" \
  -e TMOD_AUTOSAVE_INTERVAL="$TMOD_AUTOSAVE_INTERVAL" \
  -e TMOD_AUTODOWNLOAD="$TMOD_AUTODOWNLOAD" \
  -e TMOD_ENABLEDMODS="$TMOD_ENABLEDMODS" \
  -e TMOD_MOTD="$TMOD_MOTD" \
  -e TMOD_PASS="$TMOD_PASS" \
  -e TMOD_MAXPLAYERS="$TMOD_MAXPLAYERS" \
  -e TMOD_WORLDNAME="$TMOD_WORLDNAME" \
  -e TMOD_WORLDSIZE="$TMOD_WORLDSIZE" \
  -e TMOD_WORLDSEED="$TMOD_WORLDSEED" \
  -e TMOD_DIFFICULTY="$TMOD_DIFFICULTY" \
  jacobsmile/tmodloader1.4