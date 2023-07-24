{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.bottles # Enables bottles.
  ];
}