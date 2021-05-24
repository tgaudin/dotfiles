# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zinit/bin/zinit.zsh


# Plugins
zinit load zdharma/fast-syntax-highlighting
zinit load zdharma/history-search-multi-word
zinit light zsh-users/zsh-autosuggestions
zinit load romkatv/powerlevel10k
zinit load zsh-users/zsh-completions
zinit load ninrod/pass-zsh-completion
# zinit snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker

zstyle :plugin:history-search-multi-word reset-prompt-protect 1

setopt nonomatch
setopt interactive_comments
setopt correct
setopt noclobber
setopt complete_aliases
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000
SAVEHIST=$HISTSIZE
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

eval "$(pyenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
