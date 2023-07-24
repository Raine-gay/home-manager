{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.element-desktop # Enables the element messaging client.
  ];
}