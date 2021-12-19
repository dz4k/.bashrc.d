
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
