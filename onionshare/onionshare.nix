{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.onionshare-gui
  ];
}
