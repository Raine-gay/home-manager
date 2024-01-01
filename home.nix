{ config, ... }:

{
  # Get the username and directory from the enviroment variables.
  home.username = builtins.getEnv"USER";
  home.homeDirectory = builtins.getEnv"HOME";

  home.stateVersion = "23.11";
  
  imports = [ # Import modular .nix files.
    ./_machine-specific/_machine-specific.nix

    ./git/git.nix
    ./libreoffice/libreoffice.nix
    ./misc/misc.nix
    ./nano/nano.nix
    ./rust/rust.nix
    ./signal-desktop/signal-desktop.nix
    ./thunderbird/thunderbird.nix
    ./visual-studio-code/visual-studio-code.nix
    ./xdg/xdg.nix
    ./zsh/zsh.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
