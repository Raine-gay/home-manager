{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.blender # Enables blender.
  ];

  xdg = {
    desktopEntries = {
      blender = {
        name = "Blender";
        exec = "nixGL blender %f";
        terminal = false;
        icon = "${pkgs.blender}/share/icons/hicolor/scalable/apps/blender.svg";
      };
    };
  };
}