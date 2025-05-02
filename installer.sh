#!/bin/bash

echo -e "\033[38;5;111mHjad Installer (Info): Installing Hjad\033[0m"
mkdir -p ~/.local/bin
echo -e "\033[38;5;214mHjad Installer (Info): Downloading hjadcod1.\033[0m"
curl -fsSL https://github.com/PyJulian/HjadCode/raw/refs/heads/main/releases/hjadcod1.bin -o ~/.local/bin/hjad
echo -e "\033[38;5;214mHjad Installer (Info): Making hjad executable.\033[0m"
chmod +x ~/.local/bin/hjad
SHELL_RC="$([ -n \"$ZSH_VERSION\" ] && echo ~/.zshrc || echo ~/.bashrc)"
if ! grep -qxF 'export PATH="$HOME/.local/bin:$PATH"' "$SHELL_RC"; then
    echo -e "\033[38;5;214mHjad Installer (Info): Adding ~/.local/bin to your path.\033[0m"
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$SHELL_RC"
else
    echo -e "\033[38;5;46mHjad Installer (Info): ~/.local/bin is already in your path.\033[0m"
fi
echo -e "\033[38;5;214mHjad Installer (Info): Reloading your shell configuration.\033[0m"
source "$SHELL_RC"
echo -e "\033[38;5;34mHjad Installer (Success): Hjad successfully installed.\nReopen the Terminal for it to work."\033[0m"
