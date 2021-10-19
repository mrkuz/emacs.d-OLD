(use-package centaur-tabs
  :init
  (setq centaur-tabs-style "bar"
	    centaur-tabs-height 24
        centaur-tabs-show-new-tab-button nil
        centaur-tabs-set-close-button nil
	    centaur-tabs-set-bar 'over)
  :config
  (defun centaur-tabs-buffer-groups () '("All"))
  (set-face-attribute 'centaur-tabs-selected nil :family "Ubuntu" :height 100)
  (set-face-attribute 'centaur-tabs-unselected nil :family "Ubuntu" :height 100)
  (set-face-attribute 'centaur-tabs-selected-modified nil :family "Ubuntu" :height 100)
  (set-face-attribute 'centaur-tabs-unselected-modified nil :family "Ubuntu" :height 100)
  (centaur-tabs-mode t)
  :hook
  (org-capture-mode . centaur-tabs-local-mode))
