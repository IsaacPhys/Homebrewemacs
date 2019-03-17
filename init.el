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
  (require 'init-auctex)
  (require 'init-company-mode)
  (require 'init-flycheck)
  (require 'init-minibuffer)
  (require 'init-spellcheck)
  (require 'init-python)
  (require 'custom)
  ;(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
  )

 ;Garbage collector-decrease threshold to 5 MB
(add-hook 'after-init-hook (lambda () (setq gc-cons-threshold (* 16777216 1024 1024))))



    
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
