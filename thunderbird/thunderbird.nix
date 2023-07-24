{ config, ... }:

{
  programs.thunderbird = {
    enable = true; # Enables the thunderbird mail client.
    profiles = {}
  };
}
