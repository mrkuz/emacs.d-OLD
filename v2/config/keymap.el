(defun my/reload-config ()
  "Reload configuration."
  (interactive)
  (load-file user-init-file))

(defun my/find-config ()
  "Open configuration file."
  (interactive)
  (find-file user-init-file))

(setq my/map (make-sparse-keymap))
(global-set-key (kbd "C-;") my/map)
(global-set-key (kbd "C-ö") my/map)

(define-key my/map (kbd "f c") 'my/find-config)
(define-key my/map (kbd "n s") 'my/create-scratch)
(define-key my/map (kbd "R") 'my/reload-config)
