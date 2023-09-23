{ config, ... }:

{
  programs.librewolf = {
    enable = true; # Enables the librewolf browswer.
    settings = {
      "identity.fxaccounts.enabled" = true;
    }
  };
}
