{ config, ... }:

# Any changes to the _machine-specific/ directory is untracked by git.
# If this is not the case use the following command in the root folder: git update-index --skip-worktree _machine-specific/*

{
  imports = [ # Place your machine specific imports here.
    
  ];
}