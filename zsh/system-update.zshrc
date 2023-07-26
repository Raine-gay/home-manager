system-update() { # A simple ZSH script to update pacman, nix-channels, & home-manager

    echo 
    if read -q "choice?Update base system: y/n "; then
        sudo pacman -Syu
    fi
          
    echo
    if read -q "choice?Update nix-channels: y/n "; then 
        echo
        echo "starting nix-channel update"
        echo
        nix-channel --update
    fi
    
    echo
    if read -q "choice?Home-manager update: y/n "; then
        echo
        echo "Starting home-manager update"
        echo
        pushd $HOME/.config/home-manager/
        git pull
        echo
        home-manager switch
    fi
    
    echo
    echo "Collecting garbage:"
    nix-collect-garbage -d
    echo
    echo "System update complete."
}
