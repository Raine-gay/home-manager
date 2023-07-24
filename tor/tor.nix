{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.tor
    pkgs.tor-browser-bundle-bin
  ];
}
