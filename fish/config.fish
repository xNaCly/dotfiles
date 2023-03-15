if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pnpm
set -gx PNPM_HOME "/home/teo/.config/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end