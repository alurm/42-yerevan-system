if status is-login
    set --export fish_greeting ''

    # Not really used by non-login shells, so it's fine for this to be shell-local.
    set --append fish_function_path ~/my/system/shell/fish/plugin-foreign-env/functions
    fenv source ~/.profile

    # To make nix shell launch fish.
    set --export SHELL (which fish)

    # ~ is filled with crap anyway.
    if [ (pwd) = ~ ]
        cd ~/my/projects
    end
end
