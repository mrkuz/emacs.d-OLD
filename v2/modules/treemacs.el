(defun my/toggle-treemacs ()
  "Toggle treemacs."
  (interactive)
  (pcase (treemacs-current-visibility)
    ('visible (delete-window (treemacs-get-local-window)))
    ('exists (treemacs-select-window))
    ('none (treemacs-display-current-project-exclusively))))

(use-package treemacs
  :defer t
  :commands (treemacs)
  :bind (
         :map treemacs-mode-map ([mouse-1] . 'treemacs-single-click-expand-action)
              :map my/map
              ("t t" . 'my/toggle-treemacs)
              ("t p" . 'treemacs-display-current-project-exclusively))
  :init
  (setq treemacs-width 30
        treemacs-collapse-dirs 10)
  :config
  (set-face-attribute 'treemacs-directory-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-directory-collapsed-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-file-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-root-face nil :family "Ubuntu" :height 100 :weight 'normal :underline nil)
  (set-face-attribute 'treemacs-root-unreadable-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-root-remote-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-root-remote-unreadable-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-root-remote-disconnected-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-tags-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-help-title-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-help-column-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-git-added-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-git-ignored-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-git-renamed-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-git-conflict-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-git-modified-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-git-untracked-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-git-unmodified-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-term-node-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-on-success-pulse-face nil :family "Ubuntu" :height 100 :weight 'normal)
  (set-face-attribute 'treemacs-on-failure-pulse-face nil :family "Ubuntu" :height 100 :weight 'normal))
