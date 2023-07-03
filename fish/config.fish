if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add starship
starship init fish | source
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
# Remove greeting
set fish_greeting

alias v="lvim"
alias c="code"
alias g="git"
