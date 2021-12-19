
if [ -f /run/.toolboxenv ]; then

	export TOOLBOX_NAME=$(cat /run/.containerenv | \
	                      grep 'name=' | sed -e 's/^name="\(.*\)"$/\1/')
	
	alias ,,="flatpak-spawn --host"

	for cmd in flatpak xdg-open; do
		alias "$cmd=,, $cmd"
	done
fi
