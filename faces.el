;;; faces.el - Fonts and all that

(set-face-attribute 'default nil
                    :font main-font
                    :height 110)

(set-face-attribute 'fixed-pitch nil
                    :font main-font
                    :height 110)

(set-face-attribute 'variable-pitch nil
                    :font variable-font
                    :height 110)

(set-face-attribute 'hl-line nil
                    :weight 'bold)

(set-face-attribute 'help-key-binding nil
                    :inherit 'default
                    :background "grey90"
                    :box '(:line-width (4 . 2) :color "grey90"))
