# Global Git config
These are fallback settings for git when repo-specific
settings aren't set. they're loaded after repo-specific
configs, and the global gitignore is loaded after/in-addition
to repo gitignores.

## config
`config` is stubbed: some configs shouldn't be in version control
(global username, etc). Others should (default branch name, etc).

`config` has been checked in with sensible settings. All
future modifications to the file are ignored by:

- `git update-index --assume-unchanged config`

If changes need to be checked in, start tracking again with

- `git update-index --no-assume-unchanged config`

Don't forget to remove sensitive configs before commiting,
and to untrack it after!

## ignore
The global `.gitignore`. language/project-specific ignores
belong in repo. personal tool files, OS files, etc go here.
