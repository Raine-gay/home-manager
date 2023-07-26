{ config, ... }:

{
  xdg = {
    enable = true; # Allow home manager to control xdg base directories.
    systemDirs.data = [ "/usr/share" "/usr/local/share" "$HOME/.nix-profile/share" "/var/lib/flatpak/exports/share" ];
  };
}
