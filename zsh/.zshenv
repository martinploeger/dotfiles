#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

if [[ -x /usr/libexec/path_helper ]]; then
	eval `/usr/libexec/path_helper -s`
fi

export NODE_PATH=/usr/local/lib/node_modules
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

