function zsh () {
        if [ ! -d ~/.oh-my-zsh ]; then
            sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" <<EOF
    exit
EOF
        chsh -s $(which zsh)
        sudo apt install -y keychain
        mkdir -p -m 700 ~/.ssh
        git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
        sed -i "s/ZSH_THEME=\"robbyrussell\"/#ZSH_THEME=\"robbyrussell\"/" ~/.zshrc
        cat >> ~/.zshrc <<EOF
    fpath+=$HOME/.zsh/pure
    autoload -U promptinit; promptinit
    prompt pure
    zmodload zsh/nearcolor
    zstyle :prompt:pure:path color '#FFFFFF'
    zstyle ':prompt:pure:prompt:*' color cyan
    zstyle :prompt:pure:git:stash show yes
    eval $(keychain --eval --agents ssh --quick --quiet)
    export TERM=xterm-256color
EOF
        fi
}
