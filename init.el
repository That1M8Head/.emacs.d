;;; init.el - My Emacs config

(prefer-coding-system 'utf-8)

(setq initial-buffer-choice "~/.emacs.d/startup.md")

(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/functions.el")
(load "~/.emacs.d/keybinds.el")

(setq-default custom-safe-themes t)
(setq-default custom-file "~/.emacs.d/custom.el")
(setq-default backup-directory-alist `(("." . "~/.saves")))

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

(defun disable-electric-quote-mode ()
  (electric-quote-mode -1))

(add-hook 'markdown-mode-hook #'disable-electric-quote-mode)

(setq-default tab-width 4
              indent-tabs-mode nil
              c-default-style "linux"
              c-basic-offset 4)

(setq chosen-font "JetBrains Mono")

(set-face-attribute 'default nil
                    :font chosen-font
                    :height 110)

(set-face-attribute 'fixed-pitch nil
                    :font chosen-font
                    :height 110)

(set-face-attribute 'hl-line nil
                    :inherit 'highlight
                    :font chosen-font
                    :weight 'bold)

(set-face-attribute 'help-key-binding nil
                    :inherit 'default
                    :background "grey90"
                    :box '(:line-width (4 . 2) :color "grey90"))
