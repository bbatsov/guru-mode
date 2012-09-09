# Synopsis

Guru mode disables some common keybindings and suggests the use of the established Emacs alternatives instead.

# Installation

## Manual
Just drop `guru-mode.el` somewhere in your `load-path`. I favour the
folder `~/.emacs.d/vendor`:

```lisp
(add-to-list 'load-path "~/emacs.d/vendor")
```

You can enable `guru-mode` globally like this:

```lisp
(require 'guru-mode)
(guru-global-mode +1) ;; to enable in all buffers
```

Most likely you'd like to enable `guru-mode` only in specific modes
(like `prog-mode` in Emacs 24):

```lisp
(add-hook 'prog-mode-hook (lambda () (guru-mode +1)))
```

## Marmalade

If you're an Emacs 24 user or you have a recent version of package.el
you can install guru-mode from the [Marmalade](http://marmalade-repo.org/) repository.

## MELPA

If you're an Emacs 24 user or you have a recent version of package.el
you can install guru-mode from the [MELPA](http://melpa.milkbox.net/) repository.

## Emacs Prelude

`guru-mode` is naturally part of the
[Emacs Prelude](https://github.com/bbatsov/prelude). If you're a Prelude
user - `guru-mode` is already properly configured and ready for
action.
