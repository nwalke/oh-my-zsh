# ------------------------------------------------------------------------------
#          FILE:  webdev.plugin.zsh
#   DESCRIPTION:  oh-my-zsh webdev plugin file.
#        AUTHOR:  Blake Harley (blake@blakeharley.com)
#       VERSION:  1.0.0
# ------------------------------------------------------------------------------

# Alias AFS paths
for i in /afs/iastate.edu/virtual/*; do alias afs-${i##/*/}="cd $i"; done

# Also alias VWH dirs
for i in "man01" "man02" "dev01" "host01"
do
	for j in $(find /vwh-$i/ -mindepth 2 -maxdepth 2 -type d -name "*.iastate.edu" | sed 's/\(\/.*\/\(.*\).iastate.edu\)/\1:\2/')
	do
		alias ${j##*:}="cd ${j%%:*}"
	done
done

