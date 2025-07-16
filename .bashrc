#
# ~/.bashrc
#

# get the bash config stuffs
source_dir() {
  local dir="$1"
  [ -d "$dir" ] || return 1

  for file in "$dir"/*; do
    [ -r "$file" ] || continue
    . "$file"
  done
}

# source all in the bashrc directory
source_dir ~/.config/bashrc/apps/
source_dir ~/.config/bashrc/core/
source_dir ~/.config/bashrc/plugins/
