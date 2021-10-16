;; Set up initial frame position and size
(setq default-frame-alist '((width . 140) (height . 50)))

;; Disable toolbar
(tool-bar-mode 0)
;; Disable blinking cursor
(blink-cursor-mode 0)
;; Disable menu bar
(menu-bar-mode 0)
;; Disable scroll bar
(scroll-bar-mode 0)
;; Show matching parens
(show-paren-mode 1)

;; Show column number in mode line
(column-number-mode 1)
;; Show line numbers
(add-hook 'prog-mode-hook (lambda () (display-line-numbers-mode)))


;; Show date in modeline
(setq display-time-default-load-average nil)
(setq display-time-format "%Y/%m/%d W%V")
(display-time-mode 1)

;; Show buffer name in frame title
(setq-default frame-title-format '("Emacs - %b"))
;; Set font
(set-frame-font "Ubuntu Mono:size=16")
;; (set-frame-font "DejaVu Sans Mono:size=14")

;; Load theme
(use-package dracula-theme
  :config
  (load-theme 'dracula t))

;; Get rid of minor modes in the modeline
(use-package diminish
  :config
  (diminish 'eldoc-mode)
  (diminish 'abbrev-mode))

;; Powerline
(use-package telephone-line
  :config
  (telephone-line-mode 1))
