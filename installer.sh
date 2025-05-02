#!bin/bash
# Simple installer, uninstaller soon 🙏

mkdir -p ~/.local/bin && \
curl -fsSL https://github.com/PyJulian/HjadCode/raw/refs/heads/main/releases/hjadcod1.sh -o ~/.local/bin/hjad && \
chmod +x ~/.local/bin/hjad && \
SHELL_RC="$([ -n \"$ZSH_VERSION\" ] && echo ~/.zshrc || echo ~/.bashrc)" && \
grep -qxF 'export PATH="$HOME/.local/bin:$PATH"' "$SHELL_RC" || echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$SHELL_RC" && \
source "$SHELL_RC"
