#!/bin/sh

output=/tmp/$$.out
name=/tmp/$$.name

cat > $output
tmux command-prompt -p "Output filename:" "run-shell \"echo '%%' > $name\"; wait-for -S pipe-selection"
tmux wait-for pipe-selection
dest=$(cat $name)
mv $output "$dest"
