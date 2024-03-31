function fish_prompt
	set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s///p')
	set_color $fish_color_cwd
	echo -n (prompt_pwd)
	if test -n "$git_branch"
		set_color normal
		echo -n '{'
		set_color purple
		echo -n "$git_branch"
		set_color normal
		echo -n '}'
	end
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
