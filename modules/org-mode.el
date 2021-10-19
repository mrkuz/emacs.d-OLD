(use-package org
  :defer t
  :init
  ;; Set org directory
  (setq org-directory "~/org")
  ;; Include diary in agenda
  (setq org-agenda-include-diary t
        ;; Set up agenda files
        org-agenda-files (directory-files-recursively org-directory "\.org$"))
  ;; Open files folded
  (setq org-startup-folded t
        ;; Insert log notes into LOGBOOK
        org-log-into-drawer t
        ;; Add CLOSED timestamp to DONE items
        org-log-done 'time
        ;; Add tags immediate after the headline
        org-tags-column 0)
  ;; TODO keywords
  (setq org-todo-keywords '((sequence "TODO(t)" "|" "DONE(d!)" "CANCELED(c!)" "PAUSED(p!)")))
  ;; Set archive file
  (setq org-archive-location "~/org/AAA.org::* File: %s"
        ;; Don't add header to archive file
        org-archive-file-header-format nil)
  ;; Allow setting refile targets as local file variable
  (put 'org-refile-targets 'safe-local-variable (lambda (_) t))
  :config
  (set-face-attribute 'org-level-1 nil :height 1.0 :weight 'normal)
  (set-face-attribute 'org-level-2 nil :height 1.0 :weight 'normal)
  (set-face-attribute 'org-level-3 nil :height 1.0 :weight 'normal)
  (set-face-attribute 'org-todo nil :weight 'bold)
  (set-face-attribute 'org-done nil :weight 'bold)
  :bind (:map my/map
              ("f t" . (lambda () (interactive) (find-file (concat org-directory "/todo.org")))))
  :hook (org-mode . org-indent-mode))
