{config, pkgs, ...}:

{
  home.packages = [
    pkgs.dbeaver # Enables dbeaver relational database viewer
  ];
}