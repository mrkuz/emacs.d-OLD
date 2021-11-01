;; Show available key bindings based on your current input
(use-package which-key
  :diminish which-key-mode
  :init
  (setq which-key-show-docstrings t
        which-key-max-description-length 50
        which-key-max-display-columns 1
        which-key-side-window-max-width 0.5
        which-key-side-window-location 'right)
  :config
  (which-key-mode 1))
