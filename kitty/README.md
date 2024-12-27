# Kitty configs

## kitty.config
Main config file. Look at [the docs](https://sw.kovidgoyal.net/kitty/conf/)
for options. Don't forget to check the available "kittens" for more/easier
options & changes.

## Changing app icon
[docs and options](https://sw.kovidgoyal.net/kitty/faq/#i-do-not-like-the-kitty-icon)
**tldr** if you put a `.icns` file in this directory and change the name
to `kitty.app.icns`, kitty will automatically use it everywhere on mac.
changing the name is key - all other `.icns` will be ignored. The other method
is brittle on mac.


## Ignored files
- `*.bak`: kitty makes backups of config when changed.
- `current-theme.conf`: kitty provides "kittens" (little scripts) for
common tasks like choosing fonts or changing themes. this is generated
by running `kitten themes`.
