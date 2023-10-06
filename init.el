;;; init.el - My Emacs config

(prefer-coding-system 'utf-8)

(setq initial-buffer-choice "~/.emacs.d/startup.md")

(load "~/.emacs.d/packages.el"    ;; Configures packages through use-package
      "~/.emacs.d/functions.el"   ;; Editing commands and stuff
      "~/.emacs.d/keybinds.el"    ;; Key bindings, usually with the <C-c> prefix
      "~/.emacs.d/faces.el"       ;; Fonts and all that
      "~/.emacs.d/options.el"     ;; Customising the UI and other options
      )      

(setq-default custom-safe-themes t)
(setq-default custom-file "~/.emacs.d/custom.el")
(setq-default backup-directory-alist `(("." . "~/.saves")))

;; Below this point is unsorted stuff that I can’t be bothered to sort

(defun disable-electric-quote-mode ()
  (electric-quote-mode -1))

(add-hook 'markdown-mode-hook #'disable-electric-quote-mode)
