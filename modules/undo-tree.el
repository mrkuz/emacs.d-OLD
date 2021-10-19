;; Show undo history as tree structure
(use-package undo-tree
  :diminish undo-tree-mode
  :init
  ;; Inhibit keymap setup
  (setq undo-tree-map (make-sparse-keymap))
  (setq undo-tree-visualizer-diff nil ; Show diff with 'd'
        undo-tree-visualizer-timestamps nil ; Show timestamps with 't'
        undo-tree-visualizer-relative-timestamps nil)
  ;; my/map
  (define-key my/map (kbd "u") 'undo-tree-visualize)
  :hook ((text-mode . undo-tree-mode)
         (prog-mode . undo-tree-mode)))
