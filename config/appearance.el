;;--------------------------------------------------------------------------------------------------
;; Frame
;;--------------------------------------------------------------------------------------------------

;; Set up initial frame position and size
(setq default-frame-alist '((width . 140) (height . 50)))
;; Show buffer name in frame title
(setq-default frame-title-format '("Emacs - %b"))

;;--------------------------------------------------------------------------------------------------
;; Fonts
;;--------------------------------------------------------------------------------------------------

(set-frame-font "Ubuntu Mono")
(set-face-attribute 'default nil :family "Ubuntu Mono" :height 120)
(set-face-attribute 'fixed-pitch nil :family "Ubuntu Mono")
(set-face-attribute 'variable-pitch nil :family "Ubuntu")

;;--------------------------------------------------------------------------------------------------
;; Theme
;;--------------------------------------------------------------------------------------------------

(use-package dracula-theme
  :config
  (load-theme 'dracula t)
  (set-face-attribute 'line-number nil :slant 'normal)
  (set-face-attribute 'line-number-current-line nil :slant 'normal))

;;--------------------------------------------------------------------------------------------------
;; Modeline
;;--------------------------------------------------------------------------------------------------

;; Get rid of minor modes in the modeline
(use-package diminish
  :config
  (diminish 'eldoc-mode)
  (diminish 'abbrev-mode))

;; Show date in modeline
(setq display-time-format "%Y-%m-%d W%V")
(setq display-time-default-load-average nil)
(display-time-mode 1)

;; Powerline
;; (use-package telephone-line
;;   :config
;;   (telephone-line-mode 1))

;;--------------------------------------------------------------------------------------------------
;; Miscellaneous
;;--------------------------------------------------------------------------------------------------

;; Disable toolbar
(tool-bar-mode 0)
;; Disable menu bar
(menu-bar-mode 0)
;; Disable scroll bar
(scroll-bar-mode 0)

;; Disable blinking cursor
(blink-cursor-mode 0)
;; Set cursor to bar
;; (setq-default cursor-type 'bar)

;; No dialog boxes
(setq use-dialog-box nil)

;; Add some line spacing
(setq-default line-spacing 2)

;; Highlight current line
;; (global-hl-line-mode 1)
;; Show matching parens
(show-paren-mode 1)
;; Show column number in mode line
(column-number-mode 1)
;; Show line numbers
(add-hook 'prog-mode-hook (lambda () (display-line-numbers-mode)))
