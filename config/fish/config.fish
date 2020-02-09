function fish_greeting
	fortune -s | cowsay | lolcat
end

if test -e ~/.config/fish/var.fish
	source ~/.config/fish/var.fish
end

if test -e ~/.config/fish/alias.fish
	source ~/.config/fish/alias.fish
end
