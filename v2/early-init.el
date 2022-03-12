;; Avoid garbage collection at startup
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold 16777216 ; 16 MiB
                  gc-cons-percentage 0.1)))

;; Prevent loading packages prior to their init-file
(setq package-enable-at-startup nil)

;; Move gccemacs eln cache to var
(when (boundp 'native-comp-eln-load-path)
  (add-to-list 'native-comp-eln-load-path (expand-file-name "var/eln-cache" user-emacs-directory)))
