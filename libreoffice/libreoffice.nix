{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.libreoffice # Enables libreoffice.
  ];
}