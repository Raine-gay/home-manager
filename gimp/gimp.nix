{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.gimp # Enables gimp.
  ];
}