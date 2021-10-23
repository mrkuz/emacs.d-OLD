(defun my/org-select-no-tabs (name &rest args)
  (when (stringp name)
    (when (string= name "*Org Select*")
      (centaur-tabs-local-mode))))

(use-package centaur-tabs
  :init
  (setq centaur-tabs-style "bar"
	    centaur-tabs-height 24
        centaur-tabs-show-new-tab-button nil
        centaur-tabs-set-close-button nil
	    centaur-tabs-set-bar 'over)
  :config
  (defun centaur-tabs-buffer-groups ()
    (list
     (cond
	  ((string-prefix-p "*scratch" (buffer-name)) "Default")
      ((string-prefix-p "*" (buffer-name)) "Emacs")
	  (t "Default"))))
  (advice-add 'org-switch-to-buffer-other-window :after 'my/org-select-no-tabs)
  (set-face-attribute 'centaur-tabs-selected nil :family "Ubuntu" :height 100)
  (set-face-attribute 'centaur-tabs-unselected nil :family "Ubuntu" :height 100)
  (set-face-attribute 'centaur-tabs-selected-modified nil :family "Ubuntu" :height 100)
  (set-face-attribute 'centaur-tabs-unselected-modified nil :family "Ubuntu" :height 100)
  (centaur-tabs-mode t)
  :hook
  (org-capture-mode . centaur-tabs-local-mode))
