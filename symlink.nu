#!/usr/bin/env nu

def main [] {
  rm ~/.local/share/fcitx5 -rf
  mkdir ~/.local/share ~/.config o> /dev/null
  stow wayland terminal misc
}
