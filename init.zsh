#!/usr/bin/env zsh

fpath=($PWD/functions $PWD/completions $fpath)

for config file ($PWD/lib/*.zsh); do
	source $config_file
done

for plugin ($omz_plugins); do
	if [[ -f "$PWD/plugins/$plugin/$plugin.plugin.zsh"
	 || -f "$PWD/plugins/$plugin/$plugin/_$plugin" ]]; then
		fpath=($PWD/plugins/$plugin $fpath)
	fi
	if [[ -f "$PWD/plugins/$plugin/$plugin.plugin.zsh" ]]; then
		source $PWD/plugins/$plugin/$plugin.plugin.zsh
	fi
done

for theme_file ($PWD/themes/*.zsh-theme); do
	zsh_themes[$theme_name]=${theme_file:a}
done
