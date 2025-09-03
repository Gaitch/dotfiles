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

# Autosuggestions
[[ -r /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && \
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting (source near the end of .zshrc)
[[ -r /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# AUTOSUGGESTION
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# HIGHLIGHTING
# source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


alias cd..='cd ..'
alias cd='z'
alias ls='eza -l --icons'
alias fzf='fzf -m --preview="batcat --color=always {}"'
alias aptdate='sudo apt update && sudo apt upgrade -y' 
alias pdfmain='pdflatex main.tex && rm main.{aux,log,out,toc,bbl,blg,bcf,fdb_latexmk,fls,lof,run.xml}'
alias texbuild='lualatex -output-directory=out main.tex && mv out/main.pdf .'
alias ytdl='yt-dlp -o "%(title)s.%(ext)s"'
alias ytdl-pl='yt-dlp -o "~/Videos/random/%(title)s.%(ext)s" "https://www.youtube.com/watch?v=cWNUl1vKeg4&list=PLIv1DeEOKsmIkcb1uZB-cmM3gwmuSIy0_"'
alias restart-audio='systemctl --user restart pipewire pipewire-pulse wireplumber'
alias dl='yt-dlp -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o "%(title)s.%(ext)s"'  
alias ytaudio='yt-dlp --download-archive ~/downloaded.txt \
                      --no-post-overwrites \
                      --cookies-from-browser firefox \
                      --throttled-rate 100K \
                      --extractor-args youtube:player_client=web \
                      --force-generic-extractor \
                      --retry-sleep 5 \
                      --ignore-errors \
                      -f "bestaudio/best" \
                      --extract-audio \
                      --audio-format mp3 \
                      --audio-quality 0 \
                      -o "%(title)s.%(ext)s"'

export PATH=$PATH:/usr/local/MATLAB/R2024b/bin
export PATH=$PATH:~/hslu/ku/projects/iot/dev/pico/picotool/build
export PICO_SDK_PATH=~/hslu/ku/projects/iot/dev/pico/pico-sdk/
