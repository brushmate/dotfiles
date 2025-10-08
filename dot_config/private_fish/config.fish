if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx SSH_AUTH_SOCK $HOME/.bitwarden-ssh-agent.sock

kubectl completion fish | source

