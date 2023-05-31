{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.nano
  ];
  
  home.file = {
    ".config/nano/nanorc".text = ''
      include "/usr/share/nano/*.nanorc"
      include "/usr/share/nano/extra/*.nanorc"
      include "~/.config/home-manager/nano/nix.nanorc"
    '';
  };
}
