{ config, ...}:

{
  programs.zsh = {
    enable = true; # Enable zsh.
    enableSyntaxHighlighting = true; # Enable zsh syntax highlighting.

    oh-my-zsh = {
      enable = true; # Enable the oh-my-zsh framework.
      theme = "robbyrussell"; # Set the zsh theme.
      extraConfig = ''
        system-update() { # A simple ZSH script to update pacman, nix-channels, & home-manager
          sudo pacman -Syu
          
          echo
          if read -q "choice?Update nix-channels: y/n"; then 
            echo
            echo "starting nix-channel update"
            echo
            nix-channel --update
          fi
          
          echo
          if read -q "choice?Home-manager update: y/n"; then
            echo
            echo "Starting home-manager update"
            echo
            home-manager switch
          fi
          
          echo
          echo "Collecting garbage:"
          nix-collect-garbage
          echo
          echo "System update complete"
        }
      '';
    };
  };
}
