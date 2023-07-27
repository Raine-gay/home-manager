{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.obs-studio
  ];

  xdg = {
    desktopEntries = {
      obs-studio = {
        name = "Obs";
        exec = "nixGL obs %U";
        terminal = false;
      };
    };
  };
}