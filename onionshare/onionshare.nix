{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.onionshare-gui # Enables onionshare.

    pkgs.python310Packages.gevent-socketio  # Missing dependancies for onionshare.
    pkgs.python310Packages.gevent-websocket # Somebody fucked up and the PR to fix it ain't approved.
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
