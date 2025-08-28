if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# email
export EMAIL="manndmd@gmail.com"
export NAME="David Mann"
export SMTPSERVER="smtp.gmail.com"

## enable git completion
source ~/.git-completion.bash
##alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs "$@"
##use git Emacs
##alias emacs=~/git/emacs/nextstep/Emacs.app/Contents/MacOS/Emacs "$@"

## suppress error message with gitk
alias gitk='gitk 2>/dev/null'

## 4/6/2025 update Java version
export JAVA_HOME="/opt/homebrew/opt/openjdk/java/bin"

##export PATH=/usr/texbin:$PATH
export PATH=/Library/TeX/Distributions/Programs/texbin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# # use gnu coreutils without g in front of names
# export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export PATH="/usr/local/bin:$PATH"

# ~/bin is first on path
export PATH="$HOME/bin:$PATH"

## for Wiegley's ledger program
# export LEDGER_FILE="~/Documents/epstudios_ledger.dat"

# needed to use hub
eval "$(hub alias -s)"

# emacsclient
export ALTERNATE_EDITOR=emacs EDITOR=emacsclient VISUAL=emacsclient

# Note this allows emacs to configure (makeinfo > 4.13) but might
# break Tex program??
export PATH="/usr/local/opt/texinfo/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/Development/sdk/platform-tools:$PATH"

export PATH="$PATH:/Users/mannd/Development/sdk"
