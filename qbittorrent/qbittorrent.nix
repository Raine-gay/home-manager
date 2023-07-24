{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.qbittorrent
  ];
}
