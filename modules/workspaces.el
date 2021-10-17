(defun my/create-scratch ()
  "Create a new scratch buffer."
  (interactive)
  (let ((scratch (generate-new-buffer "*scratch*")))
    (switch-to-buffer scratch)
    (funcall initial-major-mode)
    scratch))

(use-package eyebrowse
  :config
  (setq eyebrowse-mode-line-left-delimiter ""
        eyebrowse-mode-line-right-delimiter ""
        eyebrowse-mode-line-separator " "
        eyebrowse-mode-line-style t
        eyebrowse-new-workspace (lambda () (switch-to-buffer "*scratch*")))
  (eyebrowse-mode))
