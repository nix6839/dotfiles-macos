. "$ZPLUG_HOME/init.zsh"

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug 'ohmyzsh/ohmyzsh', use:'lib/*.zsh'
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
