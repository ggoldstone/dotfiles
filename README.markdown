# Das .dotfiles

## Learn all the things about .dotfiles!
Dotfiles are used to customize and automate your computer system. Of course, you must already know this and found yourself here, now, in the midst of your quest for the most powerful dotfiles of the realm. Your quest is not over, for this repo is surely not it. There's always another on the horizon.

Perhaps you haven't learned all the things yet: 

[Getting Started with .dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789)

[Your unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/)

[Managing Dotfiles Across Multiple Platforms](http://www.geoffcorey.com/2015/03/managing-dotfiles-across-multiple-platforms/)

[Dotfiles Are Meant to Be Forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)


## Install

```bsh
git clone https://github.com/ggoldstone/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.

Everything is configured and tweaked within `~/.dotfiles`.

Edit `zsh/zshrc.symlink`, which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## Topical

Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A work in progress as I figure out what I want to keep for myself.

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into your `$HOME`. 
  This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Thanks

* [Joshua Rubin](https://github.com/joshuarubin) for planting the seed of dotfiles in my mind
* [Zach Holman](https://github.com/holman/dotfiles) for wanting his dotfiles to work for everyone including Joshua.
* Fork all the things!