;;; guru-mode.el --- Become an Emacs guru   -*- lexical-binding:t -*-

;; Copyright (C) 2012-2016 Bozhidar Batsov

;; Author: Bozhidar Batsov
;; URL: https://github.com/bbatsov/guru-mode
;; Version: 0.2
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

(defvar guru-warn-only nil
  "When non-nil you'll only get an error message.")

(defvar guru-affected-bindings-list
  '(("<left>" "C-b" left-char)
    ("<right>" "C-f" right-char)
    ("<up>" "C-p" previous-line)
    ("<down>" "C-n" next-line)
    ("<C-left>" "M-b" left-word)
    ("<C-right>" "M-f" right-word)
    ("<C-up>" "M-{" backward-paragraph)
    ("<C-down>" "M-}" forward-paragraph)
    ("<M-left>" "M-b" left-word)
    ("<M-right>" "M-f" right-word)
    ("<deletechar>" "C-d" delete-forward-char)
    ("<C-delete>" "M-d" kill-word)
    ("<next>" "C-v" scroll-up-command)
    ("<C-next>" "C-x <" scroll-left)
    ("<prior>" "M-v" scroll-down-command)
    ("<C-prior>" "C-x >" scroll-right)
    ("<home>" "C-a" move-beginning-of-line)
    ("<end>" "C-e" move-end-of-line)
    ("<C-home>" "M-<" beginning-of-buffer)
    ("<C-end>" "M->" end-of-buffer)))

(defun guru-current-key-binding (key)
  "Look up the current binding for KEY without guru-mode."
  (prog2 (guru-mode -1) (key-binding (kbd key)) (guru-mode +1)))

(defun guru-rebind (original-key alt-key original-binding)
  (lambda ()
    (interactive)
    (let ((current-binding (guru-current-key-binding original-key)))
      (if (eq current-binding original-binding)
          (progn
            (let ((warning-text (if guru-warn-only "discouraged" "disabled")))
              (message "%s keybinding is %s! Use <%s> instead" original-key warning-text alt-key))
            (when guru-warn-only
              (call-interactively (key-binding (kbd alt-key)))))
        ;; else: the key has been re-mapped from the global default,
        ;; use it without interference.
        (call-interactively current-binding)))))

(dolist (cell guru-affected-bindings-list)
  (let ((original-key (car cell))
        (recommended-key (car (cdr cell)))
        (original-binding (car (cdr (cdr cell)))))
    (define-key guru-mode-map
      (read-kbd-macro (car cell)) (guru-rebind original-key recommended-key original-binding))))

;;;###autoload
(define-minor-mode guru-mode
  "A minor mode that teaches you to use Emacs effectively."
  :lighter " guru"
  :keymap guru-mode-map
  :group 'guru)

;; define global minor mode
;;;###autoload
(define-globalized-minor-mode guru-global-mode guru-mode guru-mode)

(provide 'guru-mode)
;;; guru-mode.el ends here
