;;; faces.el - Fonts and all that

(setq chosen-font "JetBrains Mono")

(set-face-attribute 'default nil
                    :font chosen-font
                    :height 110)

(set-face-attribute 'fixed-pitch nil
                    :font chosen-font
                    :height 110)

(set-face-attribute 'hl-line nil
                    :weight 'bold)

(set-face-attribute 'help-key-binding nil
                    :inherit 'default
                    :background "grey90"
                    :box '(:line-width (4 . 2) :color "grey90"))
