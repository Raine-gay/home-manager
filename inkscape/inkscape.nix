{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.inkscape # Enables the inkscape SVG editor.
  ];
}