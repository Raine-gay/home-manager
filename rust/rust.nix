{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.rustup # Enables the rust toolchain manager.
  ];

  home.sessionPath = [
    "$HOME/.cargo/bin" # Add cargo/bin to the path.
  ];
}