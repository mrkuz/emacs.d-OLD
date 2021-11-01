;; Show completions vertically
(use-package vertico
  :config
  (vertico-mode))

;; Use orderless completion style
(use-package orderless
  :init
  (setq orderless-matching-styles '(orderless-literal orderless-regexp orderless-flex))
  (add-to-list 'completion-styles 'orderless))

;; Show extra information (like description, file permission, ...) next to minibuffer completions
(use-package marginalia
  :config
  (marginalia-mode))
