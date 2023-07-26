{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.onionshare-gui # Enables onionshare.
  ];

  xdg = {
    desktopEntries = {
      onionshare = {
        name = "Onionshare";
        exec = "onionshare %U";
        terminal = false;
        icon = "${builtins.getEnv"USER"}/.config/home-manager/onionshare/logo.png";
      };
    };
  };
}
