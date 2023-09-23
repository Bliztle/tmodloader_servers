SCRIPT_PATH="$(dirname -- "${BASH_SOURCE[0]}")"

echo $SCRIPT_PATH

source $SCRIPT_PATH/../DEFAULT_CONFIG

export NAME=example
export DATA_PATH=$SCRIPT_PATH/../volumes/$NAME/data

export TMOD_MOTD='Welcome to the tmodloader example server!'
export TMOD_PASS='CorrectHorseBatteryStaple'
export TMOD_WORLDNAME='ExampleWorld'
export TMOD_WORLDSEED='thisisaverygoodseed'

# WTFFFFF="$SCRIPT_PATH/../scripts/start_container.sh"

# echo $WTFFFFF

$SCRIPT_PATH/../scripts/start_container.sh