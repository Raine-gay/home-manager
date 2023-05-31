{ config, ... }:

{
  programs.git = {
    enable = true; # Enable git
    
    userEmail = "NA@NA.com";
    userName = "NA";
  };
}
