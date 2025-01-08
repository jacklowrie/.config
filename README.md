# Jack's configs
I got tired of having a messy home folder, and of having to 
manually set up new machines/VMs to match my local setup.

## Overview
Each directory corresponds to a tool. The directories also have 
README's explaining what the tool is, what the contents of the directory
are, what is git-ignored/why, and where to look for more info.

I use ZSH for interactive shells wherever possible, and bash wherever
I can't. As such, `.config/zsh` is a good place to start. In addition,
there's an example `$HOME/.zshenv` for setting up macs (real one not 
version-controlled, see below), and a `brewfile` (that is version-controlled) 
for installing the tools.

### XDG Base Directory Spec
Many of the tools configured here fully or partially adhere to the XDG Base 
Directory Specification, even if they don't say so explicitly. I didn't know 
what XDG was when I decided to version-control my config files, so including 
some info here.

- [Official XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/latest/)
- [XDG OS Correlations Cheatsheet](https://gist.github.com/roalcantara/107ba66dfa3b9d023ac9329e639bc58c)

#### TL;DR
application/tool files go in three top-level folders in a
user's home directory. each app should have it's own subfoders in each.
1. `~/.config` for configuration files. env: `$XDG_CONFIG_HOME`
    - that's this directory, it's good to have in VCS. The other's aren't.
2. `~/.local` for data files. this is further divided into state and share.
    - `~/.local/share` contains data files. env: `$XDG_DATA_HOME`
    - `~/.local/state` contains state files. env: `$XDG_STATE_HOME`
3. `~/.cache` for temp files. env: `$XDG_CACHE_HOME`.

linux uses this spec by default, mac doesn't, which is why we have to set 
the environment variables manually above. The only one that's truly critical
is `CONFIG`, and arguably `DATA`/`STATE` (since not setting those has
the potential to pollute the home directory). it might be possible to use the
correlations linked above for the latter two, and it's almost certainly possible
to use the correlations for the remaining environment variables.

## Setup
General idea: copy this repo to home directory (as `.config`),
then make sure the machine's shell of choice can find its config
files in this repo. This means there's likely one machine-specific
file that needs to go outside/in the home folder on each machine.
Other than the interactive shell, most of the tools/apps configured
here know to look for configs in this directory without further setup.

### MacOS
1. copy this repo to $HOME folder (as `.config`).
2. create a `.zshenv` in the home folder, and have it source this config.
    - see `macos.zshenv` for an example. All it does is manually set `$XDG`
variables, then source the zshenv in this repo.
    - you can also set machine-specific environment variables here.
>[!note]
> You'll need to make sure the directories those variables point outside
> this repo to exist. If you don't, the config should still work, but many
> of these tools will fall back to polluting your home directory :(.
3. restart your terminal (or source that `.zshenv`)
4. Use the included brewfile to install the tools (or manually install a subset)

### Linux
TBD, likely comparable to mac but without needing to manually set 
`$XDG` variables.

### Windows
No clue, not sure this will work. Some of the tools I use (like `Kitty`) aren't 
Windows-compatible. For the ones that do work on Windows, I'd speculate this will 
only work with WSL.


