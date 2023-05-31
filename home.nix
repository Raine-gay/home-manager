{ config, ... }:

{
  home.username = "arc";
  home.homeDirectory = "/home/arc";

  home.stateVersion = "23.05";
  
  imports = [ # Import modular .nix files.
    ./audacity/audacity.nix
    ./bitwarden/bitwarden.nix
    ./filezilla/filezilla.nix
    ./geany/geany.nix
    ./git/git.nix
    ./htop/htop.nix
    ./librewolf/librewolf.nix
    ./nano/nano.nix
    ./onionshare/onionshare.nix
    ./qbittorrent/qbittorrent.nix
    ./tor/tor.nix
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
