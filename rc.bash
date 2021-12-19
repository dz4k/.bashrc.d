
declare -A rc_imports=()

require() {
	pushd $(dirname $(caller | cut -d' ' -f2)) &>/dev/null
	local path=$(realpath "$1")
	# echo 'asdasd' $PWD $1 $path
	popd &>/dev/null
	shift

	if [ -z ${rc_imports[$path]} ]; then
		source $path
		rc_imports["$path"]=1
		return 0
	fi

	return 1
}


require ./src/env.bash
require ./src/shorthand-aliases.bash
require ./src/flatpak-aliases.bash
require ./src/prompt.bash
require ./src/toolbx.bash
