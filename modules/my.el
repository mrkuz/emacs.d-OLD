(defun my/load-config (name)
  "Load config by name."
  (load-file (expand-file-name (concat name ".el") (concat user-emacs-directory "/config"))))

(defun my/load-module (name)
  "Load module by name."
  (load-file (expand-file-name (concat name ".el") (concat user-emacs-directory "/modules"))))

(defun my/create-scratch ()
  "Create a new scratch buffer."
  (interactive)
  (let ((scratch (generate-new-buffer "*scratch*")))
    (switch-to-buffer scratch)
    (funcall initial-major-mode)
    scratch))
