{ config, ...}:

# A collection of misc config shit.

{
  home.sessionPath = [
    "$HOME/.dotnet/tools" # Dotnet tools path variable.
  ];

  home.sessionVariables = {
    DOTNET_CLI_TELEMETRY_OPTOUT=1; # Disable dotnet telemetry.
  };
}