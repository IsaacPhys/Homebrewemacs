(require 'cl)

 ;;---------------------------------------------------------------------------------
 ;; Set Packages
 ;;---------------------------------------------------------------------------------
(when (>= emacs-major-version 24)
   (require 'package)
   (package-initialize)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))


 ;;add whatever packages you want here
(defvar isaac/packages '(
			 company
			 auctex
			 monokai-theme
			 hungry-delete
			 color-theme
			 helm
			 company-auctex
			 highlight-parentheses
			 auto-complete
			 helm-directory
			 swiper
			 counsel
			 smartparens
			 js2-mode
			 nodejs-repl
			 exec-path-from-shell
			 popwin
			 )  "Default packages")
(setq package-selected-packages isaac/packages)

(defun isaac/packages-installed-p ()
  (loop for pkg in isaac/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (isaac/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg isaac/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

 ;;---------------------------------------------------------------------------------
 ;; Hungry Delete
 ;;---------------------------------------------------------------------------------      
;(global-hungry-delete-mode t)


 ;;---------------------------------------------------------------------------------
 ;; Parantheses 
 ;;---------------------------------------------------------------------------------
(require 'highlight-parentheses) 
(define-globalized-minor-mode global-highlight-parentheses-mode  
  highlight-parentheses-mode  
  (lambda ()  
    (highlight-parentheses-mode t)))  
(global-highlight-parentheses-mode t)
(electric-pair-mode t)
;(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(require 'smartparens-config)
(smartparens-global-mode t)


 ;;---------------------------------------------------------------------------------
 ;; Swipe and Ivy Mode
 ;;---------------------------------------------------------------------------------
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)


 ;;---------------------------------------------------------------------------------
 ;; Company
 ;;---------------------------------------------------------------------------------
(global-company-mode t)


 ;;---------------------------------------------------------------------------------
 ;; Themes
 ;;---------------------------------------------------------------------------------
(require 'color-theme)
(color-theme-initialize)
;(color-theme-oswald)
(load-theme 'monokai t)


 ;;---------------------------------------------------------------------------------
 ;; js2-mode
 ;;--------------------------------------------------------------------------------- 
;config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))
(require 'nodejs-repl)


 ;;---------------------------------------------------------------------------------
 ;; Popwin
 ;;---------------------------------------------------------------------------------
(require 'popwin)  ;;when require, wh(setq company-minimum-prefix-length 1)en not require
(popwin-mode t)

(provide 'init-packages)
