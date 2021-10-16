;; Load modules
(load-file (expand-file-name "modules/straight.el" user-emacs-directory))

;; Keep ~/.emacs.d clean by using 'etc' and 'var' subdirectories
(use-package no-littering
  :init
  (setq no-littering-etc-directory (expand-file-name "etc/" user-emacs-directory))
  (setq no-littering-var-directory (expand-file-name "var/" user-emacs-directory))
  :config
  (setq auto-save-file-name-transforms `((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))
  (setq custom-file (no-littering-expand-etc-file-name "custom.el")))
