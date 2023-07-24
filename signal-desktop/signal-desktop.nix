{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.signal-desktop # Enables signal-desktop.
  ];
}