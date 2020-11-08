# guru-mode

[![License GPL 3][badge-license]](http://www.gnu.org/licenses/gpl-3.0.txt)
[![MELPA](http://melpa.org/packages/guru-mode-badge.svg)](http://melpa.org/#/guru-mode)
[![MELPA Stable](http://stable.melpa.org/packages/guru-mode-badge.svg)](http://stable.melpa.org/#/guru-mode)

[badge-license]: https://img.shields.io/badge/license-GPL_3-green.svg

## Synopsis

Guru mode disables (or warns on) some generic keybindings and suggests the use of the
established and more efficient Emacs alternatives instead. Here are a few examples:

* It will teach you to avoid the arrow keys and use keybindings like `C-f`, `C-b`, etc.
* It will teach you to avoid keybindings using Home, End, etc.
* It will teach you to avoid Delete/Backspace.

-------------

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/C0C2204SR)
[![Patreon](https://img.shields.io/badge/patreon-donate-orange.svg)](https://www.patreon.com/bbatsov)

## Installation

### Manual

Just drop `guru-mode.el` somewhere in your `load-path`. I favour the
folder `~/.emacs.d/vendor`:

```emacs-lisp
(add-to-list 'load-path "~/emacs.d/vendor")
(require 'guru-mode)
```

### MELPA

If you're an Emacs 24 user or you have a recent version of package.el
you can install guru-mode from the [MELPA](https://melpa.org/) repository.

### Emacs Prelude

`guru-mode` is naturally part of the
[Emacs Prelude](https://github.com/bbatsov/prelude). If you're a Prelude
user - `guru-mode` is already properly configured and ready for
action.

## Usage

You can enable `guru-mode` globally like this:

```emacs-lisp
(guru-global-mode +1)
```

Most likely you'd like to enable `guru-mode` only in specific modes
(like `prog-mode` in Emacs 24):

```emacs-lisp
(add-hook 'prog-mode-hook 'guru-mode)
```

If you only want to get warnings when you the arrow keys use the following config:

```emacs-lisp
(setq guru-warn-only t)
```

You can extend the list of keybindings covered by `guru-mode` like this:

``` emacs-lisp
(add-to-list 'guru-affected-bindings-list '("<C-left>" "M-b" left-word))
```

The list you're adding is of the format (discouraged keybinding, recommended keybinding, command).

**Note:** `guru-mode` operates only on global keybindings and it will never interfere with
some mode-specific keybindings.

## Known issues

Check out the project's
[issue list](https://github.com/bbatsov/guru-mode/issues?sort=created&direction=desc&state=open)
a list of unresolved issues. By the way - feel free to fix any of them
and send me a pull request. :-)

## Contributors

Here's a [list](https://github.com/bbatsov/guru-mode/contributors) of
all the people who have contributed to the development of guru-mode.

## Bugs & Improvements

Bug reports and suggestions for improvements are always
welcome. GitHub pull requests are even better! :-)

Cheers,<br/>
[Bozhidar](http://twitter.com/bbatsov)
