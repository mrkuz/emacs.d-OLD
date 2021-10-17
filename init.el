;; Contains some basic functions
(load-file (expand-file-name "modules/init.el" user-emacs-directory))

;; Load modules
(my/load-module "straight")
(my/load-module "no-littering")
(my/load-module "behavior")
(my/load-module "discover")
(my/load-module "appearance")
(my/load-module "tabbar")
(my/load-module "treemacs")
(my/load-module "completion")
(my/load-module "calendar")
(my/load-module "keymap")

;; Show number of packages and initialization time on startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "%d packages loaded in %s seconds."
                     (hash-table-count straight--profile-cache)
                     (emacs-init-time "%.2f"))))
