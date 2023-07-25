{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.wget # Enables the wget utility.
  ];
}