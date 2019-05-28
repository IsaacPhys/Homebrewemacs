;(unless package--initialized (package-initialize t))
;(add-to-list 'load-path "~/.emacs.d/lisp")

;Increase the garbage collection threshold to 128 MB to ease startup
;(setq gc-cons-threshold (* 402653184 1024 1024 ))

;Increase startup speed
;(let ((file-name-handler-alist nil))
(when (version< emacs-version "25.1")
  (error "This requires Emacs 25.1 and above!"))

;; Speed up startup
(defvar default-file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)
(setq gc-cons-threshold 80000000)
(add-hook 'emacs-startup-hook
          (lambda ()
            "Restore defalut values after init."
            (setq file-name-handler-alist default-file-name-handler-alist)
            (setq gc-cons-threshold 800000)
            (if (boundp 'after-focus-change-function)
                (add-function :after after-focus-change-function
                              (lambda ()
                                (unless (frame-focus-state)
                                  (garbage-collect))))
              (add-hook 'focus-out-hook 'garbage-collect))))

;; Load path
;; Optimize: Force "lisp"" and "site-lisp" at the head to reduce the startup time.
(defun update-load-path (&rest _)
  "Update `load-path'."
  (push (expand-file-name "site-lisp" user-emacs-directory) load-path)
  (push (expand-file-name "lisp" user-emacs-directory) load-path))

(defun add-subdirs-to-load-path (&rest _)
  "Add subdirectories to `load-path'."
  (let ((default-directory
          (expand-file-name "site-lisp" user-emacs-directory)))
    (normal-top-level-add-subdirs-to-load-path)))

(advice-add #'package-initialize :after #'update-load-path)
(advice-add #'package-initialize :after #'add-subdirs-to-load-path)

(update-load-path)
  
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
(require 'init-shackle)
(require 'custom)
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
					;)

 ;Garbage collector-decrease threshold to 5 MB
;(add-hook 'after-init-hook
;	  (lambda ()
;	    (setq gc-cons-threshold (* 16777216 1024 1024))))
