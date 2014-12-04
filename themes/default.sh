# Default Theme

if patched_font_in_use; then
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="⮂"
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN="⮃"
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="⮀"
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="⮁"
else
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
fi

TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR:-'235'}
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR:-'255'}

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}

# Tomorrow Night Eighties Colors
BKGND="236"
CURLN="237"
SELECTION="239"
FRGND="255"
CMMNT="153"
RED="210"
ORANGE="209"
YELLOW="221"
GREEN="114"
AQUA="80"
BLUE="68"
PURPLE="176"

# Format: segment_name background_color foreground_color [non_default_separator]

if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS ]; then
	TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
		#"tmux_session_info ${YELLOW} ${BKGND}" \
		"hostname ${BLUE} ${BKGND}" \
		# "ifstat 30 255" \
		# "ifstat_sys 30 255" \
		"lan_ip ${AQUA} ${BKGND} ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
		"wan_ip ${AQUA} ${BKGND}" \
		# Change git_colour="236" in the vcs_branch.sh segment to the same color.
		"vcs_branch ${GREEN} ${BKGND}" \
		"vcs_compare 60 255" \
		"vcs_staged 64 255" \
		"vcs_modified 9 255" \
		"vcs_others 245 0" \
	)
fi

if [ -z $TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS ]; then
	TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
		#"earthquake 3 0" \
		"pwd ${BLUE} ${BKGND}" \
		"mailcount ${ORANGE} ${BKGND}" \
		"now_playing ${YELLOW} ${BKGND}" \
		# "cpu 240 136" \
		"load ${PURPLE} ${BKGND}" \
		# "tmux_mem_cpu_load 234 136" \
		# Change the low battery foreground color in the battery.sh segment code.
		"battery ${RED} ${BKGND}" \
		# "weather 37 255" \
		#"rainbarf 0 0" \
		#"xkb_layout 125 117" \
		"date_day ${CMMNT} ${BKGND}" \
		"date ${CMMNT} ${BKGND} ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		"time ${CMMNT} ${BKGND} ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		#"utc_time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
	)
fi
