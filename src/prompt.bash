
require ./lib/color.bash
require ./toolbx.bash

.rc.prompt.git() {
	BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
	if [ ! "${BRANCH}" == "" ]
	then
		printf "  "
		.rc.green "⎇ $BRANCH"
	else
		echo ""
	fi
}

.rc.prompt.box() {
	if [ ! -z "$TOOLBOX_NAME" ]; then
		.rc.magenta "⬢ $TOOLBOX_NAME"
	else
		.rc.magenta '🖳 \H'
	fi
}

export PS1="
$(.rc.cyan '\u')  $(.rc.prompt.box)  $(.rc.yellow '🗀 \W')\$(.rc.prompt.git)
$(.rc.red '\$') "

