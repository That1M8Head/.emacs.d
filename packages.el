;;; packages.el - My Emacs config’s packages, using use-package with MELPA

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package adaptive-wrap
  :ensure t
  :hook (visual-line-mode . adaptive-wrap-prefix-mode))

(use-package lsp-mode
  :commands lsp
  :init
  (setq lsp-rust-server 'rust-analyzer))

(use-package lsp-ui
  :ensure t)

(use-package yasnippet
  :ensure t)

(use-package company
  :ensure t
  :config
  (global-company-mode 1))

(use-package company-lsp
  :commands company-lsp
  :init
  (push 'company-lsp company-backends)
  :config
  (setq company-lsp-cache-candidates 'auto
        company-lsp-async t
        company-lsp-enable-recompletion t))

(use-package markdown-mode
  :ensure t)

(use-package rust-mode
  :ensure t
  :config
  (setq rust-indent-offset 4))

(use-package vertico
  :ensure t
  :init
  (vertico-mode 1))

(use-package savehist
  :init
  (savehist-mode 1))

(use-package which-key
  :ensure t
  :config
  (which-key-mode 1))

(use-package writeroom-mode
  :ensure t
  :config
  (setq writeroom-width 60))

(use-package mixed-pitch
  :ensure t
  :hook markdown-mode-hook)

(use-package switch-window
  :ensure t
  :config
  (global-set-key (kbd "C-x o") 'switch-window))

(use-package affe
  :ensure t)

(use-package doom-themes
  :ensure t)

(use-package marginalia
  :ensure t
  :init
  (marginalia-mode))

(use-package magit
  :ensure t)

(use-package ligature
  :ensure t
  :config
  (ligature-set-ligatures 't '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>" ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!==" "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<" "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->" "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<" "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~=" "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|" "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:" ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:" "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!" "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:" "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)" "\\\\" "://"))
  (global-ligature-mode t))
