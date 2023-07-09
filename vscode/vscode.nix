{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true; # Enable vscode
    package = pkgs.vscodium; # Switch to vscodium.

    userSettings = {
      "workbench.editor.labelFormat" = "short";
    };
  };
}
