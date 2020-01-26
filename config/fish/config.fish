function fish_greeting
	fortune -s | cowsay | lolcat
end

if test -e ./var.fish
	source ./var.fish
end

if test -e ./alias.fish
	source ./alias.fish
end
