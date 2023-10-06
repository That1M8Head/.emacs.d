;;; options.el - GUI options and the rest of the options and you know, just to keep it organised

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
