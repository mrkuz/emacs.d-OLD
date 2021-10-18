(use-package eyebrowse
  :init
  (setq eyebrowse-mode-line-left-delimiter ""
        eyebrowse-mode-line-right-delimiter ""
        eyebrowse-mode-line-separator " "
        eyebrowse-mode-line-style t
        eyebrowse-new-workspace (lambda () (switch-to-buffer "*scratch*")))
  ;; my/map
  (define-key my/map (kbd "1") 'eyebrowse-switch-to-window-config-1)
  (define-key my/map (kbd "2") 'eyebrowse-switch-to-window-config-2)
  (define-key my/map (kbd "3") 'eyebrowse-switch-to-window-config-3)
  (define-key my/map (kbd "4") 'eyebrowse-switch-to-window-config-4)
  (define-key my/map (kbd "5") 'eyebrowse-switch-to-window-config-5)
  (define-key my/map (kbd "6") 'eyebrowse-switch-to-window-config-6)
  (define-key my/map (kbd "7") 'eyebrowse-switch-to-window-config-7)
  (define-key my/map (kbd "8") 'eyebrowse-switch-to-window-config-8)
  (define-key my/map (kbd "9") 'eyebrowse-switch-to-window-config-9)
  :config
  (eyebrowse-mode))

