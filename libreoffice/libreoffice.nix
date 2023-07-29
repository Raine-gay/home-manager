{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.libreoffice # Enables libreoffice.
    pkgs.hunspell # Enables hunspell for spell checking
  ];
}