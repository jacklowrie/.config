# Set XDG Base Directory environment variables
if [[ -z "${XDG_CONFIG_HOME+x}" ]]; then
    XDG_CONFIG_HOME="$HOME/.config"
fi
if [[ -z "${XDG_DATA_HOME+x}" ]]; then
    XDG_DATA_HOME="$HOME/.local/share"
fi
if [[ -z "${XDG_STATE_HOME+x}" ]]; then
    XDG_STATE_HOME="$HOME/.local/state"
fi
if [[ -z "${XDG_CACHE_HOME+x}" ]]; then
    XDG_CACHE_HOME="$HOME/.cache"
fi
