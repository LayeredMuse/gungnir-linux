# System-wide aliases for all users
alias ls='lsd'
alias cat='bat'
alias update='ujust update'

# Set a universal greeting
set -g fish_greeting "Welcome to Gungnir Linux!"

# Starship
starship init fish | source