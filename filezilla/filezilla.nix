{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.filezilla
  ];
}
