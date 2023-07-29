{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.libreoffice # Enables libreoffice.
    pkgs.hunspell # Enables hunspell for spell checking
    pkgs.hunspellDicts.en_GB-large # Add the en_GB hunspell dictionary
  ];
}