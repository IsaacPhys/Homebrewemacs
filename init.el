 ;;---------------------------------------------------------------------------------
 ;; Set Packages
 ;;---------------------------------------------------------------------------------
(when (>= emacs-major-version 24)
   (require 'package)
   (package-initialize)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
   )
(require 'cl)

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

 ;;---------------------------------------------------------------------------------
 ;; Some Basic Global Set
 ;;---------------------------------------------------------------------------------
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(setq ring-bell-function 'ignore)
(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode t)
(electric-indent-mode 1)
(setq-default cursor-type 'bar)
(setq make-backup-files nil)
; Let we replace the old word selected by cursor by new word
(delete-selection-mode t) 
(global-hl-line-mode t)
;; let emacs found executable 
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
      
 ;;---------------------------------------------------------------------------------
 ;; Hungry Delete
 ;;---------------------------------------------------------------------------------      
;(global-hungry-delete-mode t)

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
 ;; Org Mode
 ;;---------------------------------------------------------------------------------
(require 'org)
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/Agenda"))
(global-set-key (kbd "C-c a") 'org-agenda)

 ;;---------------------------------------------------------------------------------
 ;; Swipe and Ivy Mode
 ;;---------------------------------------------------------------------------------
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)


 ;;---------------------------------------------------------------------------------
 ;; Recent Files
 ;;---------------------------------------------------------------------------------
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


 ;;---------------------------------------------------------------------------------
 ;; Themes
 ;;---------------------------------------------------------------------------------
(require 'color-theme)
(color-theme-initialize)
;(color-theme-oswald)
(load-theme 'monokai t)

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
 ;; Company
 ;;---------------------------------------------------------------------------------
(global-company-mode t)


 ;;---------------------------------------------------------------------------------
 ;; Ido
 ;;---------------------------------------------------------------------------------
(ido-mode 1)

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


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d3a406c5905923546d8a3ad0164a266deaf451856eca5f21b36594ffcb08413a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
