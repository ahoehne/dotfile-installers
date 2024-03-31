function fish_prompt
	set -l last_status $status
	set -l stat
	if test $last_status -ne 0
	    set stat (set_color red)"[$last_status]"(set_color normal)
	end
	set_color $fish_color_cwd
	echo -n (prompt_pwd)
	if not set -q __fish_git_prompt_show_informative_status
		set -g __fish_git_prompt_show_informative_status 1
	end
	if not set -q __fish_git_prompt_color_branch
		set -g __fish_git_prompt_color_branch brmagenta
	end
	if not set -q __fish_git_prompt_showupstream
		set -g __fish_git_prompt_showupstream "informative"
	end
	if not set -q __fish_git_prompt_showdirtystate
		set -g __fish_git_prompt_showdirtystate "yes"
	end
	if not set -q __fish_git_prompt_color_stagedstate
		set -g __fish_git_prompt_color_stagedstate yellow
	end
	if not set -q __fish_git_prompt_color_invalidstate
		set -g __fish_git_prompt_color_invalidstate red
	end
	if not set -q __fish_git_prompt_color_cleanstate
		set -g __fish_git_prompt_color_cleanstate brgreen
	end
	set_color normal
	echo -n (fish_git_prompt);
	echo -n $stat
	set_color normal
	echo -n '$ '
end
function fish_right_prompt -d "Write out the right prompt"
	set_color 0af
	echo -n '['(date '+%H:%M:%S')']'
end
function fish_greeting
	neofetch
end

/usr/bin/setleds -D +num 2>/dev/null

alias vi="nvim"
alias vim="nvim"
