{ config, ... }:

{
  # Get the username and directory from the enviroment variables.
  home.username = builtins.getEnv"USER";
  home.homeDirectory = builtins.getEnv"HOME";

  home.stateVersion = "23.05";
  
  imports = [ # Import modular .nix files.
    ./_machine-specific/_machine-specific.nix

    ./audacity/audacity.nix
    ./bitwarden/bitwarden.nix
    ./blender/blender.nix
    #./bottles/bottles.nix
    ./dbeaver/dbeaver.nix
    ./element-desktop/element-desktop.nix
    ./filezilla/filezilla.nix
    ./geany/geany.nix
    ./gimp/gimp.nix
    ./git/git.nix
    ./htop/htop.nix
    ./inkscape/inkscape.nix
    ./libreoffice/libreoffice.nix
    ./librewolf/librewolf.nix
    ./nano/nano.nix
    ./obs-studio/obs-studio.nix
    ./onionshare/onionshare.nix
    ./qbittorrent/qbittorrent.nix
    ./signal-desktop/signal-desktop.nix
    ./thunderbird/thunderbird.nix
    ./tor/tor.nix
    ./visual-studio-code/visual-studio-code.nix
    ./webcord/webcord.nix
    ./wget/wget.nix
    #./wine/wine.nix
    ./xdg/xdg.nix
    ./zsh/zsh.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
