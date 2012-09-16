# Synopsis

Guru mode disables some common keybindings and suggests the use of the established Emacs alternatives instead.

# Installation

## Manual
Just drop `guru-mode.el` somewhere in your `load-path`. I favour the
folder `~/.emacs.d/vendor`:

```lisp
(add-to-list 'load-path "~/emacs.d/vendor")
(require 'guru-mode)
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

# Usage

You can enable `guru-mode` globally like this:

```lisp
(guru-global-mode +1)
```

Most likely you'd like to enable `guru-mode` only in specific modes
(like `prog-mode` in Emacs 24):

```lisp
(add-hook 'prog-mode-hook 'turn-on-guru-mode)
```

# Share the knowledge

[WikEmacs](http://wikemacs.org) collects useful resources for working
with GNU Emacs. Please, take the time to peruse and improve them as
you accumulate knowledge about Emacs. Prelude makes this especially
easy, since it bundles
[MediaWiki support](http://wikemacs.org/wiki/Mediawiki.el) + the
settings required to access WikEmacs right away.

# Known issues

Check out the project's
[issue list](https://github.com/bbatsov/guru-mode/issues?sort=created&direction=desc&state=open)
a list of unresolved issues. By the way - feel free to fix any of them
and send me a pull request. :-)

# Contributors

Here's a [list](https://github.com/bbatsov/guru-mode/contributors) of all the people who have contributed to the
development of guru-mode.

# Bugs & Improvements

Bug reports and suggestions for improvements are always
welcome. GitHub pull requests are even better! :-)

Cheers,<br/>
Bozhidar
