# ZimFW config
[Zim Framework](https://zimfw.sh) is a zsh config
framework. It's lighter than `oh-my-zsh`, and
more user-friendly than `zinit`.

`.zimrc` just contains the modules to load/install.
Zim itself needs to have a few ENV variables set
in order to not pollute the home directory, but those
are set in zsh configs, not here.

Modules are just git repos. They don't need to be listed
on the zimfw website for them to work with Zim (e.g. p10k).

