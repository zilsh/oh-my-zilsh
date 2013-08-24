# Oh My Zilsh!
A thin wrapper around oh-my-zsh, designed to bootstrap it into zilsh.

# Install
Clone the repository into your `~/.zsh/bundle/` directory or add it as a
git submodule on your dotfiles repository in an equivalent location.

# Usage
It will be autoloaded by zilsh if placed in the right directory.  Once loaded,
it first loads the files in oh-my-zsh's `completions/`, `functions/`, and `lib/`
directories.  Once this is done, it loads all the plugins from `plugins/`
specified in `$omz_plugins`.  Theme files are added to the Zilsh `$zsh_themes`
array with the extension still there (to avoid conflicts, and to avoid having to
remove it because I'm lazy)

Specify your oh-my-zsh plugins like follows:

	omz_plugins=(node git npm rails)

If you want an oh-my-zsh theme, use the following too:

	ZILSH_THEME="3den.zsh-theme"
