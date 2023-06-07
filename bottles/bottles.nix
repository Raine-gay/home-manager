{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.bottles
  ];
}
