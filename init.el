;;; init.el - My Emacs config

(prefer-coding-system 'utf-8)

(setq initial-buffer-choice "~/.emacs.d/startup.md")

(setq main-font "JetBrains Mono"
      variable-font "Roboto Slab")

(load "~/.emacs.d/packages.el")    ;; Configures packages through use-package
(load "~/.emacs.d/functions.el")   ;; Editing commands and stuff
(load "~/.emacs.d/keybinds.el")    ;; Key bindings, usually with the <C-c> prefix
(load "~/.emacs.d/options.el")     ;; Customising the UI and other options
(load "~/.emacs.d/faces.el")       ;; Fonts and all that
   
(setq-default custom-safe-themes t
              custom-file "~/.emacs.d/custom.el"
              backup-directory-alist `(("." . "~/.saves")))

;; Below this point is unsorted stuff that I can’t be bothered to sort

(defun disable-electric-quote-mode ()
  (electric-quote-mode -1))

(add-hook 'markdown-mode-hook #'disable-electric-quote-mode)
