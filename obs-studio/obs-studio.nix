{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.obs-studio
  ];

  xdg = {
    desktopEntries = {
      obs-studio = {
        name = "OBS Studio";
        exec = "nixGL obs %U";
        terminal = false;
        icon = "${pkgs.obs-studio}/share/icons/hicolor/128x128/apps/com.obsproject.Studio.png";
      };
    };
  };
}