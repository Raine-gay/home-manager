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
        icon = "${pkgs.onionshare-gui}/lib/python3.10/site-packages/onionshare/resources/onionshare-32.png";
      };
    };
  };
}
