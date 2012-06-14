;;; guru-mode.el --- Become an Emacs guru

;; Copyright (C) 2012 Bozhidar Batsov

;; Author: Bozhidar Batsov
;; URL: https://github.com/bbatsov/guru-mode
;; Version: 0.1
;; Keywords: convenience

;; This file is NOT part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Guru mode teaches to use Emacs properly.
;;
;;; Code:

(defvar guru-mode-map (make-sparse-keymap)
  "Guru mode's keymap.")

(defvar affected-bindings-list '(("<left>" . "C-b")
                                 ("<right>" . "C-f")
                                 ("<up>" . "C-p")
                                 ("<down>" . "C-n")
                                 ("<C-left>" . "M-b")
                                 ("<C-right>" . "M-f")
                                 ("<C-up>" . "M-{")
                                 ("<C-down>" . "M-}")
                                 ("<M-left>" . "M-b")
                                 ("<M-right>" . "M-f")
                                 ("<M-up>" . "M-{")
                                 ("<M-down>" . "M-}")
                                 ("<delete>" . "C-d")
                                 ("<C-delete>" . "M-d")
                                 ("<M-delete>" . "M-d")
                                 ("<next>" . "C-v")
                                 ("<C-next>" . "M-x <")
                                 ("<prior>" . "M-v")
                                 ("<C-prior>" . "M-x >")
                                 ("<home>" . "C-a")
                                 ("<C-home>" . "M->")
                                 ("<C-home>" . "M-<")
                                 ("<end>" . "C-e")
                                 ("<C-end>" . "M->")))

(defun guru-rebind (original-key alt-key)
  `(lambda ()
     (interactive)
     (message (concat ,original-key " keybinding is disabled! Use " ,alt-key " instead."))))

(dolist (cell affected-bindings-list)
  (define-key guru-mode-map
    (read-kbd-macro (first cell)) (guru-rebind (first cell) (rest cell))))

(define-minor-mode guru-mode
  "A minor mode that teaches to help you use Emacs the way it was intended to be used."
  t " guru"
  'guru-mode-map :global t)

(provide 'guru-mode)
;;; guru-mode.el ends here
