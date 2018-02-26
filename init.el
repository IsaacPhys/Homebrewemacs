
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'init-packages)

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
;; let emacs found execuable 
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
(global-auto-revert-mode t)
(setq auto-save-default nil)
(abbrev-mode t)



 ;;---------------------------------------------------------------------------------
 ;; Org Mode
 ;;---------------------------------------------------------------------------------
(require 'org)
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/Agenda"))
(global-set-key (kbd "C-c a") 'org-agenda)




 ;;---------------------------------------------------------------------------------
 ;; Recent Files
 ;;---------------------------------------------------------------------------------
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


 
 

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
 '(company-idle-delay 0.08)
 '(custom-safe-themes
   (quote
    ("d3a406c5905923546d8a3ad0164a266deaf451856eca5f21b36594ffcb08413a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
