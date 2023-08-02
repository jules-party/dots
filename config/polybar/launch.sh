CONF="${HOME}/.config/polybar/config.ini"

killall -q polybar

polybar workspaces -c ${CONF} &
polybar info -c ${CONF} &
