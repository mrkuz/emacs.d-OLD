;; Prevent loading packages prior to their init-file
(setq package-enable-at-startup nil)

;; Move gccemacs eln cache to var
(when (boundp 'native-comp-eln-load-path)
  (add-to-list 'native-comp-eln-load-path (expand-file-name "var/eln-cache" user-emacs-directory)))
