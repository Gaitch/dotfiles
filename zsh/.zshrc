# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
PROMPT='%~%# '

setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/roman/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# STARSHIP

# Load Starship
eval "$(starship init zsh)"

# FZF
# Set up fzf key bindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# ZOXIDE
autoload -Uz compinit
compinit
eval "$(zoxide init zsh)"
# End of lines added by compinstall

# AUTOSUGGESTION
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# HIGHLIGHTING
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias cd..='cd ..'
alias cd='z'
alias ls='exa -l --icons'
alias fzf='fzf -m --preview="batcat --color=always {}"'
alias aptdate='sudo apt update && sudo apt upgrade -y' 
alias pdfmain='pdflatex main.tex && rm main.{aux,log,out,toc,bbl,blg,bcf,fdb_latexmk,fls,lof,run.xml}'


export PATH=$PATH:/usr/local/MATLAB/R2024b/bin
