;;folders
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'key-bindings)

;;packages

(require 'init-utils)
(require 'init-site-lisp) 
(require 'init-elpa)

(require-package 'smex)
(require-package 'lusty-explorer)
(require-package 'ido-vertical-mode)
(require-package 'ace-jump-mode)

(smex-initialize)
(recentf-mode t)
(ido-vertical-mode t)
(electric-pair-mode t)

;;matching braces
(show-paren-mode 1)


;;line numbers
(global-linum-mode 1)
(setq linum-format " %d ")
(column-number-mode 1)


;;shift select up
(if (equal "xterm-256color" (tty-type))
    (define-key input-decode-map "\e[1;2A" [S-up]))

;; No yes-or-no, y-or-n instead
(defalias 'yes-or-no-p 'y-or-n-p)

;;delete selected text with any key
(delete-selection-mode t)

;; Auto revert buffers
(global-auto-revert-mode 1)

;; revert buffer w/o asking
(setq revert-without-query (quote (".*")))

;;disable backup files
(setq backup-inhibited t)
;;disable auto save
(setq auto-save-default nil)

(defun buffer-is-makefile()
  (if (and (stringp mode-name)
           (or (string-equal (buffer-name) "Makefile")
               (string-equal mode-name "Makefile")
               (string-equal mode-name "BSDmakefile")))
  t))

;;freaking whitespaces trail
(defun cleanup-buffer-safe ()
  (interactive)
  (if (not (buffer-is-makefile))
      (untabify (point-min) (point-max)))
  (delete-trailing-whitespace)
  (set-buffer-file-coding-system 'utf-8))

(add-hook 'before-save-hook 'cleanup-buffer-safe)

;;camel case
(add-hook 'prog-mode-hook 'subword-mode)

;;disable menubar/scrollbar/tool-bar
(custom-set-variables
 '(blink-cursor-mode nil)
 '(custom-safe-themes (quote ("c17eba2c8a017959699591f0cbb4739afb3ebb891c0887e58ad95cf667859253" default)))
 '(indent-tabs-mode nil)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(text-mode-hook (quote (text-mode-hook-identify)))
 '(tool-bar-mode nil))
