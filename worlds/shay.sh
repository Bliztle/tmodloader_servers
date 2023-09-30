SCRIPT_PATH="$(dirname -- "${BASH_SOURCE[0]}")"

source $SCRIPT_PATH/../DEFAULT_CONFIG

export NAME=terraria_server
export DOCKER_NAME="$NAME"
export DATA_PATH=/private/servers/terraria/data

### Added mods
# 2822925665 : Multiplayer Boss Spectate
export TMOD_AUTODOWNLOAD="$TMOD_AUTODOWNLOAD,2822925665"
export TMOD_ENABLEDMODS="$TMOD_ENABLEDMODS,2822925665"

export TMOD_MOTD='Welcome to the tmodloader example server!'
export TMOD_PASS='CorrectHorseBatteryStaple'
export TMOD_WORLDNAME='MiddleEarth'
export TMOD_WORLDSEED='thisisaverygoodseed'
export TMOD_DIFFICULTY='1'
export TMOD_PASS='CorrectHorseBatteryStaple'

$SCRIPT_PATH/../scripts/start_container.sh