{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.cura
  ];
}