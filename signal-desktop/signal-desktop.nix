{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.signal-desktop # Enables signal-desktop.
  ];

  xdg = { # Overide the standard .desktop file with a custom entry to allow signal to use the system tray.
    desktopEntries = {
      signal-desktop = {
        name = "Signal";
        exec = "signal-desktop --no-sandbox --use-system-tray %U";
        terminal = false;
        categories = [ "Internet" ];
      };
    };
  };
}