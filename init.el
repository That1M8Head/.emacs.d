;;; init.el - My Emacs config

(setq initial-buffer-choice "~/.emacs.d/startup.md")

(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/functions.el")

(setq-default custom-file "~/.emacs.d/custom.el")
(setq-default backup-directory-alist `(("." . "~/.saves")))

(eval-when-compile
  (require 'use-package))

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(fringe-mode 1)

(global-visual-line-mode 1)
(display-time-mode t)
(global-hl-line-mode t)
(global-display-line-numbers-mode t)
(electric-pair-mode 1)
(electric-quote-mode 1)

(setq-default tab-width 4
              indent-tabs-mode nil
              c-default-style "linux"
              c-basic-offset 4)

(set-face-attribute 'default nil
                    :font "JetBrains Mono"
                    :height 110)

(set-face-attribute 'hl-line nil
                    :font "JetBrains Mono"
                    :height 110
                    :weight 'bold)

(set-face-attribute 'help-key-binding nil
                    :inherit 'default
                    :background "grey90"
                    :box '(:line-width (4 . 2) :color "grey90"))

