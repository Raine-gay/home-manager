{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.signal-desktop # Enables signal-desktop.
  ];

  xdg = { # Override the standard .desktop file with a custom entry to allow signal to use the system tray.
    desktopEntries = {
      signal-desktop = {
        name = "Signal";
        exec = "${pkgs.signal-desktop}/bin/signal-desktop --no-sandbox --use-tray-icon %U";
        terminal = false;
        icon = "${pkgs.signal-desktop}/share/icons/hicolor/48x48/apps/signal-desktop.png";
      };
    };
  };
}
