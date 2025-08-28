# Move aliases and exports as needed to .bashrc from .bash_profile
# Emacs shells load .bashrc, not .bash_profile.
# MacOS terminal loads .bash_profile with each new shell, unlike other OSes.

# use gnu coreutils without g in front of names
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:"

# ~/bin is first on path
export PATH="$HOME/bin:$PATH"
