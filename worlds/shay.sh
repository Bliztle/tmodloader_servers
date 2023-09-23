# Pull the image
docker pull jacobsmile/tmodloader1.4:latest

SCRIPT_PATH="$(dirname -- "${BASH_SOURCE[0]}")"

PORT=7777
NAME=shay
DOCKER_NAME="tmodloader_server_$NAME"
DATA_PATH=$SCRIPT_PATH/../volumes/$NAME/data

### Mods
# 2562953970 : Better Zoom // QOL for zooming in and out on higher resolution monitors
# 2561619075 : Summoner's association // QOL for making groups of minions to summon automatically
# 2821806183 : Shields of chtulu // Allows combination of SoC with obsidian shield and upgrades
# 2828370879 : Shop Expander
# 2816694149 : Boss Cursor
# 2817496179 : Atmospheric Torches
# 2565540604 : Auto Trash
# 2562915378 : Max Stack Plus Extra
# 2565639705 : Ore Excavator (1.4.3/1.4.4 Veinminer)
# 2669644269 : Boss Checklist
# 2563851005 : Which Mod Is This From? (WMITF)
# 2619954303 : Recipe Browser
# 2614857307 : OmniSwing
# 2563309347 : Magic Storage

### Mods not in use
# 2687866031 : Census - Town NPC Checklist

# Download list of mods
TMOD_AUTODOWNLOAD='2562953970,2561619075,2821806183,2828370879,2816694149,2817496179,2565540604,2562915378,2565639705,2669644269,2563851005,2619954303,2614857307,2563309347'

# Enable all downloaded mods
TMOD_ENABLEDMODS=$TMOD_AUTODOWNLOAD

TMOD_SHUTDOWN_MESSAGE='Goodbye!'
TMOD_AUTOSAVE_INTERVAL='5'
TMOD_MOTD='Welcome to my tModLoaderServer!'
TMOD_PASS='CorrectHorseBatteryStaple'
TMOD_MAXPLAYERS='16'
TMOD_WORLDNAME='MiddleEarth'
TMOD_WORLDSIZE='3'
TMOD_WORLDSEED='thisisaverygoodseed'
TMOD_DIFFICULTY='1'

# Execute the container
docker run -p $PORT:$PORT --name "$NAME" --rm \
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