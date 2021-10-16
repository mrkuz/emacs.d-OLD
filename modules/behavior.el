;; Disable splash screen
(setq inhibit-splash-screen t)
;; Empty *scratch* buffer
(setq initial-scratch-message nil)

;; Set fill column
(setq-default fill-column 100)
;; Always ask for y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;; Ask before exiting emacs
(setq confirm-kill-emacs 'yes-or-no-p)

;; Tab width
(setq-default tab-width 4)
;; Always use spaces
(setq-default indent-tabs-mode nil)
;; Set up tab stop list
(setq tab-stop-list '(0 tab-widht))
