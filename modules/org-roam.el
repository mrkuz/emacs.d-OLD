(use-package org-roam
  :defer t
  :init
  (setq org-roam-v2-ack t
        org-roam-directory "~/Notes/"
        org-roam-dailies-directory "Journal/"
        ;; Enable completion of note links
        org-roam-completion-everywhere t)
  ;; Move org-roam boffer to the right side
  (add-to-list 'display-buffer-alist
             '("\\*org-roam\\*"
               (display-buffer-in-direction)
               (direction . right)
               (window-width . 0.30)
               (window-height . fit-window-to-buffer)))
  :bind (:map my/map
              ("n" . 'org-roam-node-find)
              ("j" . 'org-roam-dailies-goto-today))
  :config
  (require 'org-roam-dailies)
  (org-roam-db-autosync-mode))
