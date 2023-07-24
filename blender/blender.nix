{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.blender # Enables blender.
  ];
}