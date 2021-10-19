(load-file (expand-file-name "modules/my.el" user-emacs-directory))

;; Load configs and modules
(my/load-module "straight")
(my/load-module "no-littering")
(my/load-config "keymap")
(my/load-config "behavior")
(my/load-config "mail")
(my/load-config "appearance")
(my/load-module "vertico")
(my/load-module "company")
(my/load-module "centaur-tabs")
(my/load-module "treemacs")
(my/load-module "which-key")
(my/load-module "eyebrowse")
(my/load-module "undo-tree")

;; Show number of packages and initialization time on startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "%d packages loaded in %s seconds."
                     (hash-table-count straight--profile-cache)
                     (emacs-init-time "%.2f"))))
