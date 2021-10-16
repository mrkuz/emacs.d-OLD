;; Set up initial frame position and size
(setq initial-frame-alist '((width . 140) (height . 50)))

;; Disable toolbar
(tool-bar-mode 0)
;; Disable blinking cursor
(blink-cursor-mode 0)
;; Disable menu bar
(menu-bar-mode 0)
;; Disable scroll bar
(scroll-bar-mode 0)

;; Show buffer name in frame title
(setq-default frame-title-format '("Emacs - %b"))
;; Set font
(set-frame-font "Ubuntu Mono:size=16")

;; Disable splash screen
(setq inhibit-splash-screen t)
;; Empty *scratch* buffer
(setq initial-scratch-message nil)

;; Load theme
(use-package dracula-theme
  :config
  (load-theme 'dracula t))
