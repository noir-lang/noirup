#!/usr/bin/env bash
set -e

echo Installing noirup...

NARGO_HOME=${NARGO_HOME-"$HOME/.nargo"}
NARGO_BIN_DIR="$NARGO_HOME/bin"

NOIRUP_BIN_URL=${NOIRUP_BIN_URL-"https://github.com/noir-lang/noirup/releases/latest/download/noirup"}
NOIRUP_BIN_PATH="$NARGO_BIN_DIR/noirup"

# Create the .nargo bin directory and noirup binary if it doesn't exist.
mkdir -p $NARGO_BIN_DIR
curl -# -L $NOIRUP_BIN_URL -o $NOIRUP_BIN_PATH
chmod +x $NOIRUP_BIN_PATH

# Store the correct profile file (i.e. .profile for bash or .zshrc for ZSH).
case $SHELL in
*/zsh)
  PROFILE=$HOME/.zshrc
  PREF_SHELL=zsh
  ;;
*/bash)
  PROFILE=$HOME/.bashrc
  PREF_SHELL=bash
  ;;
*/fish)
  PROFILE=$HOME/.config/fish/config.fish
  PREF_SHELL=fish
  ;;
*/ash)
  PROFILE=$HOME/.profile
  PREF_SHELL=ash
  ;;
*)
  echo "noirup: could not detect shell, manually add ${NARGO_BIN_DIR} to your PATH."
  exit 1
  ;;
esac

# Only add noirup if it isn't already in PATH.
if [[ ":$PATH:" != *":${NARGO_BIN_DIR}:"* ]]; then
  # Add the noirup directory to the path and ensure the old PATH variables remain.
  echo >>$PROFILE && echo "export NARGO_HOME=\"$NARGO_HOME\"" >>$PROFILE
  echo >>$PROFILE && echo "export PATH=\"\$PATH:\$NARGO_HOME/bin\"" >>$PROFILE
fi

echo && echo "Detected your preferred shell is ${PREF_SHELL} and added noirup to PATH. Run 'source ${PROFILE}' or start a new terminal session to use noirup."
echo "Then, simply run 'noirup' to install Nargo."
