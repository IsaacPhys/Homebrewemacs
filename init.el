;(unless package--initialized (package-initialize t))
(add-to-list 'load-path "~/.emacs.d/lisp")

;Increase the garbage collection threshold to 128 MB to ease startup
(setq gc-cons-threshold (* 402653184 1024 1024 ))

;Increase startup speed
(let ((file-name-handler-alist nil))
  
  (require 'init-packages)
  (require 'init-ui)
  (require 'init-org)
  (require 'init-better-defaults)
  ;(require 'init-keybindings)
					;(require 'dired)
  (require 'init-auctex)
  (require 'init-company-mode)
  (require 'init-minibuffer)
  (require 'init-spellcheck)
  (require 'init-python)
  (require 'custom)
  (setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
  )

 ;Garbage collector-decrease threshold to 5 MB
(add-hook 'after-init-hook (lambda () (setq gc-cons-threshold (* 16777216 1024 1024))))



    
