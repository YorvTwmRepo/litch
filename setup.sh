#!/bin/sh

linkNerd="https://github.com/YorvTwmRepo/litch/releases/download/0.1.6/nitchNerd"
linkNoNerd="https://github.com/YorvTwmRepo/litch/releases/download/litch/litchNoNerd"

sudo rm -fv /usr/local/bin/nitch

echo ""

read -p "Use nerd font symbols? (y/n): " symbolsYN
echo "Installation..."

case $symbolsYN in
  "y")
    wget $linkNerd
    chmod +x nitchNerd
    sudo mv nitchNerd /usr/local/bin/litch
  ;;

  "n")
    wget $linkNoNerd
    chmod +x litchNoNerd
    sudo mv litchNoNerd /usr/local/bin/litch
  ;;
esac

echo ""
