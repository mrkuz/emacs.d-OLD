(setq my/map (make-sparse-keymap))
(global-set-key (kbd "C-;") my/map)
(global-set-key (kbd "C-ö") my/map)

(define-key my/map (kbd "f c") (lambda () (interactive) (find-file user-init-file)))
(define-key my/map (kbd "n s") 'my/create-scratch)
(define-key my/map (kbd "R") (lambda () (interactive) (load-file user-init-file)))
