{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.webcord # Enables webcord
  ];
}