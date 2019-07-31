source ~/.zplug/init.zsh
source ~/.zsh_aliases

zplug 'dracula/zsh', as:theme # Load theme file

zplug "zsh-users/zsh-syntax-highlighting", defer:1
zplug "zsh-users/zsh-history-substring-search", defer:2

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh

zplug "modules/completion", from:prezto
zplug "modules/history",    from:prezto
zplug "modules/edtiting",   from:prezto
zplug "modules/ssh",        from:prezto

zplug "rupa/z"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

#if zplug check zsh-users/zsh-autosuggestions; then
#    ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down)
#    ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}")
#fi

KEYTIMEOUT=1
#bindkey -v

if zplug check zsh-users/zsh-history-substring-search; then
    bindkey '\eOA' history-substring-search-up
    bindkey '\eOB' history-substring-search-down
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

source $HOME/.local/bin/virtualenvwrapper.sh
