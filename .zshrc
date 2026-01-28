if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"



plugins=(
	git
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh



# alias
# alias nv=nvim
alias vi=nvim
alias py=python3
alias nv=neovim
alias gi=neovide

alias p8='ping 8.8.8.8'

alias ls='lsd --icon=always --color=always'
alias ll='lsd -l --icon=always --color=always --group-dirs=first'         # 長列表格式
alias la='lsd -la --icon=always --color=always --group-dirs=first'        # 顯示隱藏檔 + 長列表

alias ff='fastfetch'
alias lg='lazygit'

alias ip='ipconfig getifaddr en0'

alias c="tty-clock -c"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$HOME/.local/bin:$PATH"

#yazi setup
export EDITOR="nvim"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


# QuickJump - Fast Directory Navigation Tool
source /Users/osga/.config/quickjump/quickjump-function.sh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pyenv
eval "$(pyenv init -)"


export TERM=xterm-256color

. "$HOME/.local/bin/env"
