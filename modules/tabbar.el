(use-package centaur-tabs
  :config
  (setq centaur-tabs-style "bar"
	    centaur-tabs-height 24
        centaur-tabs-show-new-tab-button nil
        centaur-tabs-set-close-button nil
	    centaur-tabs-set-bar 'over)
  (set-face-attribute 'centaur-tabs-selected nil :inherit 'variable-pitch)
  (set-face-attribute 'centaur-tabs-unselected nil :inherit 'variable-pitch)
  (centaur-tabs-mode t))
