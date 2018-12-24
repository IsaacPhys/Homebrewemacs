;; ------------------------
;; Turn off the ring
;; ------------------------
(setq ring-bell-function 'ignore)

;; ------------------------
;; Turn off electric indent mode
;; ------------------------
(electric-indent-mode t)


;; ------------------------
;; Smart Parens
;; ------------------------
;; Use smartparens to autopair the right parentheses, use highlight-parentheses to show the pair of parentheses
(require 'smartparens-config)
(smartparens-global-mode t)


;; ------------------------
;; Open recent file
;; ------------------------
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; ------------------------
;; Disable backup file
;; ------------------------
(setq make-backup-files nil)

;; ------------------------
;; Set major mode for kinds of files
;; ------------------------
;(setq auto-mode-alist
;      (append
;       '(("\\.js'" . js2-mode))
;       auto-mode-alist))

;; ------------------------
;; Delete Selection
;; ------------------------
(delete-selection-mode t)

(provide 'init-better-defaults)
