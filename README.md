# Synopsis

Guru mode disables some common keybindings and suggests the use of the established Emacs alternatives instead.

# Installation

## Manual
Just drop `guru-mode.el` somewhere in your `load-path`. I favour the
folder `~/.emacs.d/vendor`:

```
(add-to-list 'load-path "~/emacs.d/vendor")
```

You can enable projectile globally like this:

```
(require 'guru-mode)
(guru-mode) ;; to enable in all buffers
```

## Marmalade

If you're an Emacs 24 user or you have a recent version of package.el
you can install guru-mode from the [Marmalade](http://marmalade-repo.org/) repository.

## MELPA

If you're an Emacs 24 user or you have a recent version of package.el
you can install guru-mode from the [MELPA](http://melpa.milkbox.net/) repository.

## Emacs Prelude

guru-mode is naturally part of the
[Emacs Prelude](https://github.com/bbatsov/prelude). If you're a Prelude
user - guru-mode is already properly configured and ready for
action.