;; Contains some basic functions
(load-file (expand-file-name "modules/init.el" user-emacs-directory))

;; Load modules
(my/load-module "straight")
(my/load-module "no-littering")
(my/load-module "behavior")
(my/load-module "discover")
(my/load-module "appearance")
(my/load-module "completion")
(my/load-module "calendar")
(my/load-module "keymap")

;; Show initialization time on startup
(add-hook 'emacs-startup-hook
	  (lambda ()
	    (message "Ready in %s seconds."
		     (format "%.2f" (float-time (time-subtract after-init-time before-init-time))))))
