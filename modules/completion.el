;; Ignore case on completion
(setq read-file-name-completion-ignore-case t
      read-buffer-completion-ignore-case t
      completion-ignore-case t)

;; Show completions vertically
(use-package vertico
  :config
  (vertico-mode))

;; Use orderless completion style
(use-package orderless
  :config
  (setq orderless-matching-styles '(orderless-literal orderless-regexp orderless-flex)
        completion-styles '(orderless)))

;; Show extra information (like description, file permission, ...) next to minibuffer completions
(use-package marginalia
  :config
  (marginalia-mode))
