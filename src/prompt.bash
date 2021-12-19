
.rc.bold() {
	printf '\001\e[1m\002'
	echo -en $1
	printf '\001\e[m\002'
}
.rc.red() {
	printf '\001\e[1;31m\002'
	echo -en $1
	printf '\001\e[m\002'
}
.rc.green() {
	printf '\001\e[1;32m\002'
	echo -en $1
	printf '\001\e[m\002'
}
.rc.yellow() {
	printf '\001\e[1;33m\002'
	echo -en $1
	printf '\001\e[m\002'
}
.rc.magenta() {
	printf '\001\e[1;35m\002'
	echo -en $1
	printf '\001\e[m\002'
}
.rc.cyan() {
	printf '\001\e[1;36m\002'
	echo -en $1
	printf '\001\e[m\002'
}

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

