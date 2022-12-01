# problem: when presenting, I want to obscure
# my prompt to act like it's at root of file system 
# and be very basic with no git info, etc.

# solution: this theme lets you set a ENV to the path 
# of your presentation, which will help remove unneeded prompt
# features while in that path 

# oh-my-zsh theme for presenting demos
# based off the default rubbyrussell theme
# save this in .oh-my-zsh/custom/themes/present.zsh-theme
# then make this your default theme in .zshrc and it will 
# act normal until you set the ENV VAR 'PRESENT' to a full path
# to the folder you want to present from. This will then hide
# the current working dir name in your prompt while in that dir only
# and hide the git_prompt for it and all subdirs
# mine has a whale emote for all things docker
# simply unset the PRESENT to clear config
# example:
# cd path/to/my/code/repo/for/presentation
# export PRESENT=$(PWD)

# if PRESENT has been set, lets show whale
# if not, DAY DRINKING!
function whale_or_bourbon () {
    if [[ -z $PRESENT ]]; then
        # 256 color with ;1m for bold %{\e[38;5;45;1m%}
        # https://wiki.archlinux.org/index.php/zsh#Colors
        # http://jafrog.com/2013/11/23/colors-in-terminal.html
        # https://misc.flogisoft.com/bash/tip_colors_and_formatting
        # also note that any error code from last command will result in 
        # fire rather then bourbon
        echo -n "%(?:🐙 :🔥 )"
        echo -n "%{$fg_bold[blue]%}%c%{$reset_color%} $(git_prompt_info)"
    else
        # note that I've had feedback that people seeing fire
        # while I'm in demo mode is off-putting so I've disabled it
        # here by default, but swap out the next two lines to enable it
        echo -n "%(?:🐳 :🔥 )"
        # echo -n "🐳 "
        # if we're in the root of presentation, hide the path
        if [[ ! $PWD == $PRESENT ]]; then
            echo -n "%{$fg_bold[blue]%}%c%{$reset_color%} "
        fi
    fi
}

PROMPT='$(whale_or_bourbon)'
#default
# PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}💍"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# OPTIONAL BONUS: let this theme set this alias, then whenever you need to present, 
# just cd to the path you're presenting from and type `present` 💥
alias present='export PRESENT=$(pwd)'
