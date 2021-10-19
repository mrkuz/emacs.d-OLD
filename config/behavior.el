;;--------------------------------------------------------------------------------------------------
;; Start-up
;;--------------------------------------------------------------------------------------------------

;; Don't load default init
(setq inhibit-default-init t)
;; Disable splash screen
(setq inhibit-splash-screen t)
;; Empty *scratch* buffer
(setq initial-scratch-message nil)
;; Use org-mode for scratch buffers
;; (setq initial-major-mode 'org-mode)

;;--------------------------------------------------------------------------------------------------
;; Indention
;;--------------------------------------------------------------------------------------------------

;; Tab width
(setq-default tab-width 4)
;; Always use spaces
(setq-default indent-tabs-mode nil)
;; Set up tab stop list
(setq tab-stop-list '(0 tab-width))

;;--------------------------------------------------------------------------------------------------
;; Undo
;;--------------------------------------------------------------------------------------------------

;; Use linear undo
(global-set-key [remap undo] 'undo-only)
(global-set-key (kbd "C-x U") 'undo-redo)

;;--------------------------------------------------------------------------------------------------
;; Calendar
;;--------------------------------------------------------------------------------------------------

;; Configure calendar holidays
(setq calendar-holidays (append holiday-general-holidays holiday-christian-holidays))
;; Start week with monday
(setq calendar-week-start-day 1)
;; Use ISO date format
(setq calendar-date-style 'iso)

;;--------------------------------------------------------------------------------------------------
;; Completion
;;--------------------------------------------------------------------------------------------------

;; Add fuzzy completion
(setq completion-styles '(basic partial-completion flex))
;; Ignore case on completion
;; (setq read-file-name-completion-ignore-case t
;;      read-buffer-completion-ignore-case t
;;      completion-ignore-case t)

;;--------------------------------------------------------------------------------------------------
;; Backups
;;--------------------------------------------------------------------------------------------------

;; Disable backup files
;; (setq make-backup-files nil)
;; Make numeric backups
(setq version-control t)
;; Keep all backups
(setq delete-old-versions -1)
;; Disable auto save
;; (setq auto-save-default nil)

;;--------------------------------------------------------------------------------------------------
;; Miscellaneous
;;--------------------------------------------------------------------------------------------------

;; Disable bell
(setq ring-bell-function 'ignore)
;; Set fill column
(setq-default fill-column 100)
;; Always ask for y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;; Ask before exiting emacs
(setq confirm-kill-emacs 'yes-or-no-p)
;; Enable all disabled commands
(setq disabled-command-hook nil)
;; Always follow links
(setq vc-follow-symlinks t)
