if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
fnm env --use-on-cd --shell fish | source
