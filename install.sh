# vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# dracula theme https://draculatheme.com/zsh/ https://draculatheme.com/zsh/

# vim
ln -s $HOME/dotfiles/vim/.vimrc $HOME/.vimrc

# git
ln -s $HOME/dotfiles/git/.gitconfig $HOME/.gitconfig

# base 16 kitty
git clone git@github.com:kdrag0n/base16-kitty.git
ln -s $HOME/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf

# tmux
ln -s $HOME/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf

# kitty
mkdir -p $HOME/dotfiles/kitty/
ln -s $HOME/dotfiles/kitty/kitty.conf $HOME/.config/kitty/kitty.conf