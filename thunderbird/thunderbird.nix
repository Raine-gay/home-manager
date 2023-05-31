{ config, ... }:

{
  programs.thunderbird = {
    enable = true; # Enable thunderbird mail client.
    profiles = {};
  };
}