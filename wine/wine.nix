{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.wineWowPackages.stagingFull # Enables wine 32 & 64 with experimental features.
    pkgs.winetricks # Enables winetricks.
  ];
}