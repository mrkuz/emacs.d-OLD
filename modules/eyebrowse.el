(use-package eyebrowse
  :init
  ;; Inhibit keymap setup
  (setq eyebrowse-mode-map (make-sparse-keymap))
  (setq eyebrowse-mode-line-left-delimiter ""
        eyebrowse-mode-line-right-delimiter ""
        eyebrowse-mode-line-separator " "
        eyebrowse-mode-line-style t
        eyebrowse-new-workspace (lambda () (switch-to-buffer "*scratch*")))
  :bind (:map my/map
              ("1" . 'eyebrowse-switch-to-window-config-1)
              ("2" . 'eyebrowse-switch-to-window-config-2)
              ("3" . 'eyebrowse-switch-to-window-config-3)
              ("4" . 'eyebrowse-switch-to-window-config-4)
              ("5" . 'eyebrowse-switch-to-window-config-5)
              ("6" . 'eyebrowse-switch-to-window-config-6)
              ("7" . 'eyebrowse-switch-to-window-config-7)
              ("8" . 'eyebrowse-switch-to-window-config-8)
              ("9" . 'eyebrowse-switch-to-window-config-9))
  :config
  (eyebrowse-mode))

