{ config, ...}:

{
  programs.zsh = {
    enable = true; # Enable zsh.
    syntaxHighlighting.enable = true; # Enable zsh syntax highlighting.

    oh-my-zsh = {
      enable = true; # Enable the oh-my-zsh framework.
      theme = "robbyrussell"; # Set the zsh theme.
      extraConfig = ''
        source ~/.config/home-manager/zsh/system-update.zshrc
      '';
    };
  };
}
