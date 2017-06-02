ZSH_THEME_GIT_PROMPT_DIRTY="%F{yellow}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_PREFIX="(%F{green}git:%F{red}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%{$reset_color%})"

#PROMPT="%n:%c%F{cyan}>%F{yellow}>%F{green}>%F{red}>%f"

PROMPT='%c%F{cyan}>%F{yellow}>%F{green}>%F{red}>%f'

RPROMPT='%m$(git_prompt_info)'

