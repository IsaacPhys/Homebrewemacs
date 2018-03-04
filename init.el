(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp")

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(require 'init-ui)
(require 'init-packages)
(require 'init-org)
(require 'init-better-defaults)
(require 'init-keybindings)
(require 'dired)
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))



