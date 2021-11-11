(defun my/org-find-todo ()
  "Open configuration file."
  (interactive)
  (find-file (concat org-directory "/todo.org")))

(defun my/org-protocol-capture-hook ()
  (let ((name (cdr (assoc 'name (frame-parameters)))))
    (when (equal name "org-protocol-capture")
      (delete-other-windows)
      (modify-frame-parameters nil '((z-group . above)))
      (select-frame-set-input-focus (selected-frame)))))

(defun my/org-protocol-after-capture-hook ()
  (let ((name (cdr (assoc 'name (frame-parameters)))))
    (when (equal name "org-protocol-capture")
      (delete-frame))))

(use-package org-bullets
  :after org
  :init
  (setq org-bullets-bullet-list '("◉" "○" "●" "◦" "•"))
  :hook (org-mode . org-bullets-mode))

(use-package org
  :defer t
  :init
  (require 'org-protocol)
  ;; Set org directory
  (setq org-directory "~/org")
  ;; Include diary in agenda
  (setq org-agenda-include-diary t
        ;; Set up agenda files
        org-agenda-files '("~/org/todo.org" "~/org/projects/" "~/org/calendar/" "~/org/mobile/"))
  ;; Open files folded
  (setq org-startup-folded t
        ;; Insert log notes into LOGBOOK
        org-log-into-drawer t
        ;; Add CLOSED timestamp to DONE items
        ;; org-log-done 'time
        ;; Add tags immediate after the headline
        org-tags-column 0
        ;; Reduce indentation
        org-indent-indentation-per-level 1)
  ;; Hide marker characters
  (setq org-hide-emphasis-markers t)
  ;; TODO keywords
  (setq org-todo-keywords '(
                            (sequence "TODO(t)" "|" "DONE(d!)" "CANCELED(c!)" "PAUSED(p!)")
                            (sequence "EVENT(e)" "|" "DONE(d!)" "CANCELED(c!)")))
  ;; Set archive file
  (setq org-archive-location "~/org/.archive.org::* File: %s"
        ;; Don't add header to archive file
        org-archive-file-header-format nil)
  ;; Never add blank lines before new entries
  (setq org-blank-before-new-entry '((heading . nil) (plain-list-item . nil)))
  ;; Allow setting refile targets as local file variable
  (put 'org-refile-targets 'safe-local-variable (lambda (_) t))
  ;; Capture templates
  (setq org-capture-templates '(
                                ("b" "New backlog entry" entry (file+olp "todo.org" "Backlog")
                                 "* %?\nCREATED: %U" :prepend t)
                                ("j" "Add journal entry" entry (file "journal.org")
                                 "* %U %?" :prepend t)
                                ("w" "Capture web page" entry (file "gists.org")
                                 "* %?\nCREATED: %U\nTITLE: %:description%\nURL: %:link\n\n%i" :prepend t)
                                ("p" "Capture primary selection" entry (file "gists.org")
                                 "* %?\nCREATED: %U\n\n%(gui-get-primary-selection)" :prepend t)
                                ))

  :config
  (set-face-attribute 'org-level-1 nil :height 1.0 :weight 'normal)
  (set-face-attribute 'org-level-2 nil :height 1.0 :weight 'normal)
  (set-face-attribute 'org-level-3 nil :height 1.0 :weight 'normal)
  (set-face-attribute 'org-todo nil :weight 'bold)
  (set-face-attribute 'org-done nil :weight 'bold)
  :bind (("C-c l" . 'org-store-link)
         ("C-c a" . 'org-agenda)
         ("C-c c" . 'org-capture)
         :map my/map
              ("o l" . 'org-store-link)
              ("o a" . 'org-agenda)
              ("o c" . 'org-capture)
              ("o t" . 'my/org-find-todo))
  :hook (
         (org-mode . org-indent-mode)
         (org-capture-mode . my/org-protocol-capture-hook)
         (org-capture-after-finalize . my/org-protocol-after-capture-hook)))
