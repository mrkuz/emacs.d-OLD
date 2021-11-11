;; Allow setting dictionary as local file variable
(put 'ispell-dictionary 'safe-local-variable (lambda (_) t))
;; Inhibit default flyspell keymap
(setq flyspell-mode-map (make-sparse-keymap))

(use-package flyspell-correct
  :defer t
  :after flyspell
  :bind (:map my/map
              ("c c" . flyspell-correct-at-point)
              ("c n" . flyspell-correct-next)
              ("c p" . flyspell-correct-move)))

