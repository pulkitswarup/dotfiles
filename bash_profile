# Load in additional dotfiles
declare -a dotfiles=(
	"$HOME/.path"
	"$HOME/.bash_prompt"
	"$HOME/.exports"
	"$HOME/.aliases"
	"$HOME/.functions"
	"$HOME/.bash_local"
)

# If these files are readable, source them
for dotfile in ${dotfiles[*]}; do
	if [[ -r "$dotfile" ]]; then
		source "$dotfile"
	fi
done

unset dotfiles

# Init nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

## Init phpbrew
#source "$HOME/.phpbrew/bashrc"
