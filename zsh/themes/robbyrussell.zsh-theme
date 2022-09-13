PROMPT='${ret_status}%{$fg_bold[cyan]%}%n%{$reset_color%}%{$FG[146]%} on %{$reset_color%}%{$FG[207]%}%m%{$reset_color%}$reset_color%}%{$FG[146]%} in %{$reset_color%}%{$fg_bold[yellow]%}%~%{$reset_color%} %{$FG[146]%}at %{$reset_color%}%"[%D{%f/%m/%y}|%@] $(git_prompt_info)'

if lsof -tac script "$(tty)" > /dev/null; then
	PROMPT+="${FG[160]}*%{$reset_color%}"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"