# =========================
# Prompt
# =========================

autoload -Uz colors && colors

setopt PROMPT_SUBST

# Show current directory + git branch
git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return
  echo " (%{$fg[cyan]%}$branch%{$reset_color%})"
}

# PROMPT='%{$fg[green]%}%n@%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%}$(git_branch)
# $ '
