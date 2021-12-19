
require ./shorthand-aliases.bash

if [ -f /run/.toolboxenv ]; then

	export TOOLBOX_NAME=$(grep 'name=' /run/.containerenv | \
	                        sed -e 's/^name="\(.*\)"$/\1/')
	
	alias ,="flatpak-spawn --host"

	for cmd in flatpak xdg-open; do
		alias "$cmd=, $cmd"
	done
fi
