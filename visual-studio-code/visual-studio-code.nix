{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true; # Enables visual-studio code.

    extensions = [
      pkgs.vscode-extensions.rust-lang.rust-analyzer # Add rust anal to visual code.
      pkgs.vscode-extensions.jnoortheen.nix-ide # Add the nix ide to visual code.
      pkgs.vscode-extensions.vadimcn.vscode-lldb # lldb debugger.
      pkgs.vscode-extensions.tamasfe.even-better-toml # Even better toml support.
      pkgs.vscode-extensions.donjayamanne.githistory # Git history viewer
      pkgs.vscode-extensions.streetsidesoftware.code-spell-checker # Code spell checker.
      pkgs.vscode-extensions.usernamehw.errorlens # Error lens for inline errors.
      pkgs.vscode-extensions.ms-dotnettools.csharp # C# for VS code.   
    ];

    userSettings = {
      "workbench.tree.indent" = 16;
    };
  };
}
