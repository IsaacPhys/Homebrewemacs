(require 'cl)
 ;;---------------------------------------------------------------------------------
 ;; Set Melpa Packages
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
			 cyberpunk-theme
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

;; let emacs found execuable
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
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;(color-theme-oswald)
(load-theme 'homebrew t)


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


 ;;---------------------------------------------------------------------------------
 ;; Helm
 ;;---------------------------------------------------------------------------------
(require 'helm-config)
;(global-set-key (kbd "M-x") 'helm-M-x)
;(global-set-key (kbd "C-x C-f") 'helm-find-files)


 ;;---------------------------------------------------------------------------------
 ;; Auctex Environment Variables
 ;;---------------------------------------------------------------------------------
(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))  
(setq exec-path (append exec-path '("/Library/TeX/texbin/")))


(provide 'init-packages)
