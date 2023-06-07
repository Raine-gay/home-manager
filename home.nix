{ config, ... }:

{
  home.username = "arc";
  home.homeDirectory = "/home/arc";

  home.stateVersion = "23.05";
  
  imports = [ # Import modular .nix files.
    ./audacity/audacity.nix
    ./bitwarden/bitwarden.nix
    ./bottles/bottles.nix
    ./element-desktop/element-desktop.nix
    ./filezilla/filezilla.nix
    ./geany/geany.nix
    ./gimp/gimp.nix
    ./git/git.nix
    ./htop/htop.nix
    ./nano/nano.nix
    ./inkscape/inkscape.nix
    ./librewolf/librewolf.nix
    ./libreoffice/libreoffice.nix
    ./onionshare/onionshare.nix
    ./webcord/webcord.nix
    ./thunderbird/thunderbird.nix
    ./tor/tor.nix
    ./qbittorrent/qbittorrent.nix
    ./wine/wine.nix
    ./vscode/vscode.nix
    ./signal-desktop/signal-desktop.nix
    ./xdg/xdg.nix
    ./zsh/zsh.nix
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
