(use-package centaur-tabs
  :config
  (setq centaur-tabs-style "bar"
	    centaur-tabs-height 24
        centaur-tabs-show-new-tab-button nil
        centaur-tabs-set-close-button nil
	    centaur-tabs-set-bar 'over)
  (set-face-attribute 'centaur-tabs-selected nil :family "Ubuntu" :height 0.9)
  (set-face-attribute 'centaur-tabs-unselected nil :family "Ubuntu" :height 0.9)
  (centaur-tabs-mode t))
