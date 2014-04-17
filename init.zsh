local OMZ_PATH="$BUNDLE_DIR/oh-my-zsh"

fpath=($OMZ_PATH/functions $OMZ_PATH/completions $fpath)

for config_file ($OMZ_PATH/lib/*.zsh); do
	zilsh_debug "    Loading $config_file."
	source $config_file
done

for plugin ($omz_plugins); do
	zilsh_debug "    Loading $plugin plugin."
	if [[ -f "$OMZ_PATH/plugins/$plugin/$plugin.plugin.zsh"
	 || -f "$OMZ_PATH/plugins/$plugin/$plugin/_$plugin" ]]; then
		fpath=($OMZ_PATH/plugins/$plugin $fpath)
	fi
	if [[ -f "$OMZ_PATH/plugins/$plugin/$plugin.plugin.zsh" ]]; then
		source $OMZ_PATH/plugins/$plugin/$plugin.plugin.zsh
	fi
done

for theme_file ($OMZ_PATH/themes/*.zsh-theme); do
	zilsh_debug "    Loading ${theme_file:t} theme."
	zsh_themes[${theme_file:t}]=${theme_file:a}
done
