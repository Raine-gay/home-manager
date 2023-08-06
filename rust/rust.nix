{ config, pkgs, ...}:

{
  home.packages = [
    pkgs.rustup # Enables the rust toolchain manager.
  ];
}