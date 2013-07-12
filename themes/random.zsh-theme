_ohmyzilsh_get_random_theme () {
	theme_names=(${(k)zsh_themes})
	return $theme_names[$RANDOM%$#zsh_themes]
}
source $zsh_themes[_ohmyzilsh_get_random_theme]
