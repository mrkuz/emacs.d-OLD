;; Show completions vertically
(use-package vertico
  :config
  (vertico-mode))

;; Show extra information (like description, file permission, ...) next to minibuffer completions
(use-package marginalia
  :config
  (marginalia-mode))
