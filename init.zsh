#!/usr/bin/env zsh

fpath=($PWD/oh-my-zsh/functions $PWD/oh-my-zsh/completions $fpath)

for config_file ($PWD/oh-my-zsh/lib/*.zsh); do
	_zilsh_debug "    Loading $config_file."
	source $config_file
done

for plugin ($omz_plugins); do
	_zilsh_debug "    Loading $plugin plugin."
	if [[ -f "$PWD/oh-my-zsh/plugins/$plugin/$plugin.plugin.zsh"
	 || -f "$PWD/oh-my-zsh/plugins/$plugin/$plugin/_$plugin" ]]; then
		fpath=($PWD/oh-my-zsh/plugins/$plugin $fpath)
	fi
	if [[ -f "$PWD/oh-my-zsh/plugins/$plugin/$plugin.plugin.zsh" ]]; then
		source $PWD/oh-my-zsh/plugins/$plugin/$plugin.plugin.zsh
	fi
done

for theme_file ($PWD/oh-my-zsh/themes/*.zsh-theme); do
	zsh_themes[$theme_name]=${theme_file:a}
done
