(setq completion-styles '(basic substring flex))

;; Ignore case on completion
(setq read-file-name-completion-ignore-case t)
(setq read-buffer-completion-ignore-case t)
(setq completion-ignore-case t)

(use-package vertico
  :config
  (vertico-mode))
