. "$ZPLUG_HOME/init.zsh"

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug 'ohmyzsh/ohmyzsh', use:'lib/clipboard.zsh'
zplug 'ohmyzsh/ohmyzsh', use:'lib/completion.zsh'
zplug 'ohmyzsh/ohmyzsh', use:'lib/functions.zsh'
zplug 'belak/zsh-utils', use:'history/history.plugin.zsh'
zplug 'ohmyzsh/ohmyzsh', use:'lib/key-bindings.zsh'
zplug 'ohmyzsh/ohmyzsh', use:'lib/misc.zsh'
zplug 'ohmyzsh/ohmyzsh', use:'lib/termsupport.zsh'
zplug 'ohmyzsh/ohmyzsh', use:'lib/theme-and-appearance.zsh'
zplug 'ohmyzsh/ohmyzsh', use:'lib/vcs_info.zsh'
zplug 'ohmyzsh/ohmyzsh', use:'plugins/gitfast'

zplug 'zsh-users/zsh-completions', defer:2
zplug 'zdharma-continuum/fast-syntax-highlighting', defer:2
zplug 'zsh-users/zsh-autosuggestions', defer:2

zplug 'romkatv/powerlevel10k', as:theme, depth:1

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  zplug install
fi

zplug load
