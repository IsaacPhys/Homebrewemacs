;; ------------------------
;; Turn off the ring
;; ------------------------
(setq ring-bell-function 'ignore)

;; ------------------------
;; Turn off electric indent mode
;; ------------------------
(electric-indent-mode t)

;; ------------------------
;; Auto Revert when revert the git
;; ------------------------
(global-auto-revert-mode t)

;; ------------------------
;; Turn off autosave
;; ------------------------
(setq auto-save-default nil)


;; ========================================
;; Set MacOS Keybindings
;; ========================================
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'hyper)
(global-set-key [(hyper a)] 'mark-whole-buffer)
(global-set-key [(hyper v)] 'yank)
(global-set-key [(hyper c)] 'kill-ring-save)
(global-set-key [(hyper s)] 'save-buffer)
(global-set-key [(hyper l)] 'goto-line)
(global-set-key [(hyper w)]
                (lambda () (interactive) (delete-window)))
(global-set-key [(hyper q)] 'save-buffers-kill-emacs)
(global-set-key [(hyper z)] 'undo)

(setq mac-pass-command-to-system nil)
;; ------------------------
;; Use y and n for yes and no
;; ------------------------
(fset 'yes-or-no-p 'y-or-n-p)

;; ------------------------
;; Evil-Matchit
;; ------------------------
(require 'evil-matchit)
(global-evil-matchit-mode 1)

;; ------------------------
;; Smart Parens
;; ------------------------
;; Use smartparens to autopair the right parentheses,
;; use highlight-parentheses to show the pair of parentheses
(require 'smartparens-config)
(smartparens-global-mode t)
(require 'highlight-parentheses) 
(define-globalized-minor-mode global-highlight-parentheses-mode  
  highlight-parentheses-mode  
  (lambda ()  
    (highlight-parentheses-mode t)))  
(global-highlight-parentheses-mode t)


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


;; -----------------------
;; Switch to Previous buffer
;; -----------------------
(defun er-switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(global-set-key (kbd "C-c b") #'er-switch-to-previous-buffer)

;; -----------------------
;; Abbrev Definition
;; -----------------------
(setq-default abbrev-mode t)

;; ----------------------
;; Hungry Delete
;; ----------------------
(require 'hungry-delete)
(global-hungry-delete-mode)

(setq flycheck-global-modes '(not LaTeX-mode latex-mode))

(require 'transpose-frame)


(provide 'init-better-defaults)


