# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

OHMYTHEMES=( "robbyrussell" )
#
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
#POWERLEVEL9K_COLOR_SCHEME='light'
[ "$TERM_PROGRAM" = "iTerm.app" ] && OHMYTHEMES=( "robbyrussell" )
#
ZSH_THEME=${OHMYTHEMES[(($RANDOM % ${#OHMYTHEMES} + 1))]} # chooses theme among your favourite randomly

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git brew osx common-aliases zsh-autosuggestions zsh-syntax-highlighting)
plugins=(git brew osx common-aliases zsh-autosuggestions)

if [[ -e /usr/local/share/antigen/antigen.zsh ]];then
  source /usr/local/share/antigen/antigen.zsh

  POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

  antigen use oh-my-zsh

  antigen bundle git
  antigen bundle osx
  antigen bundle brew
  antigen bundle common-aliases
  antigen bundle zsh-users/zsh-autosuggestions

  antigen theme agnoster

  antigen apply
else
  source $ZSH/oh-my-zsh.sh
fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
DEFAULT_USER=`whoami`

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_MAXLENGTH=300
#ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue' # ,underline
#ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue,underline
#ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,underline
#ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue
#ZSH_HIGHLIGHT_STYLES[builtin]=fg=blue

[[ -e ~/.bash_profile ]] && source ~/.bash_profile


if [ "$TERM" != "linux" ] && [ "$TERM_PROGRAM" = "iTerm.app" ]; then
    install_powerline_precmd
else

fi

#POWERLINE_PATH=~/Library/Python/3.6/lib/python/site-packages/powerline
#source $POWERLINE_PATH/bindings/zsh/powerline.zsh

