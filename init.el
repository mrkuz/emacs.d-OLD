;; Contains some basic functions
(load-file (expand-file-name "modules/init.el" user-emacs-directory))

;; Load modules
(my/load-module "straight")
(my/load-module "appearance")
(my/load-module "keymap")

(use-package dracula-theme
  :config
  (load-theme 'dracula t))

;; Keep ~/.emacs.d clean by using 'etc' and 'var' subdirectories
(use-package no-littering
  :init
  (setq no-littering-etc-directory (expand-file-name "etc/" user-emacs-directory))
  (setq no-littering-var-directory (expand-file-name "var/" user-emacs-directory))
  :config
  (setq auto-save-file-name-transforms `((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))
  (setq custom-file (no-littering-expand-etc-file-name "custom.el")))
