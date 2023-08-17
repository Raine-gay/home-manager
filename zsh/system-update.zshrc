system-update() { # A simple ZSH script to update pacman, nix-channels, & home-manager

    echo 
    if read -q "choice?Update base system: y/n "; then
        echo
        sudo pacman -Syu
        echo
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
        popd
        echo
        home-manager switch
    fi
    
    echo
    echo "Collecting garbage:"
    nix-collect-garbage -d
    echo
    echo "System update complete."
}

system-update-auto() { # A simple ZSH script to update pacman, nix-channels, & home-manager. This one requires no human input bar the sudo password at start.

    sudo pacman -Syu --noconfirm
    
    echo
    echo "starting nix-channel update"
    echo
    nix-channel --update

    echo
    echo "Starting home-manager update"
    echo
    pushd $HOME/.config/home-manager/
    git pull
    popd
    echo
    home-manager switch
    
    echo
    #echo "Collecting garbage:"
    #nix-collect-garbage -d
    #echo
    echo "System update complete."
}