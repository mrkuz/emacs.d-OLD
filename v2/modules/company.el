(use-package company
  :diminish company-mode
  :init
  (setq company-minimum-prefix-length 1
        company-show-numbers t
        company-idle-delay 0.4
        company-tooltip-limit 9
        ;; Keep candidate case
        company-dabbrev-downcase nil)
  :config
  (global-company-mode 1))

(use-package company-quickhelp
  :after company
  :hook (company-mode . company-quickhelp-mode)
  :bind (:map company-active-map ("C-q" . 'company-quickhelp-manual-begin))
  :init
  (setq company-quickhelp-delay 0.6
        company-quickhelp-max-lines 20
        company-quickhelp-color-background "#44475a"
        ;; Enable colors and fonts
        company-quickhelp-use-propertized-text t))
