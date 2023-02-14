#detect debian/ubuntu
if [ -f /etc/debian_version ]; then
    sudo apt-get update
    #install ffmpeg and sox
    sudo apt install ffmpeg sox
    #install cairo and pango
    sudo apt-get install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev
    # install latex deps
    sudo apt install texlive-latex-base texlive-full texlive-fonts-extra
    #install python3-dev
    sudo apt install python3-dev
fi
#detect arch
if [ -f /etc/arch-release ]; then
    sudo pacman -Syu
    #install ffmpeg and sox
    sudo pacman -S ffmpeg sox
    #install cairo and pango
    sudo pacman -S cairo pango
    # install latex deps
    sudo pacman -S texlive-most
fi
#detect fedora
if [ -f /etc/fedora-release ]; then
    sudo dnf update
    #install ffmpeg and sox
    sudo dnf install ffmpeg sox
    #install cairo and pango
    sudo dnf install cairo pango
    # install latex deps
    sudo dnf install texlive-scheme-full
fi

# detect macos
if [ "$(uname)" == "Darwin" ]; then
    # install cairo and ffmpeg
    brew install py3cairo ffmpeg
    # install pango and scipy
    brew install pango scipy
    # install latex deps
    brew install --cask mactex-no-gui
fi


