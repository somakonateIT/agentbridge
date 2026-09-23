#!/bin/sh
# AgentBridge installer — works for any tool (Claude Code, Codex, plain shell).
set -e
DIR=$(cd "$(dirname "$0")" && pwd)
mkdir -p "$HOME/.local/bin"
cat > "$HOME/.local/bin/bridge" <<SH
#!/bin/sh
exec python3 "$DIR/bin/bridge.py" "\$@"
SH
chmod +x "$HOME/.local/bin/bridge"
echo "Installed 'bridge' to ~/.local/bin/bridge"
echo "Make sure ~/.local/bin is on your PATH, then run:  bridge new"
