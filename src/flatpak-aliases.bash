
rc_flatpaks=( \
	[discord]=com.discordapp.Discord \
	[gedit]=org.gnome.gedit \
	[inkscape]=org.inkscape.Inkscape \
)

for cmd in "${!rc_flatpaks[@]}"; do
	alias $cmd="flatpak run ${rc_flatpaks[$cmd]}"
done
