if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add starship
starship init fish | source

# Remove greeting
set fish_greeting

alias v="lvim"
alias c="code"
