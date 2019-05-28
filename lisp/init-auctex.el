(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))  
(setq exec-path (append exec-path '("/Library/TeX/texbin/")))

;; ========================================
;; AucTeX settings
;; ========================================
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-engine 'xetex)

;; ========================================
;; Company-Auctex
;; ========================================
(require 'company-auctex)
(company-auctex-init)


;; ========================================
;; CDLatex
;; ========================================
(add-to-list 'load-path "~/.emacs.d/latex")
(require 'cdlatex)
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-cdlatex)   ; with Emacs latex mode


;; ========================================
;; Disable Flycheck
;; ========================================
(setq flycheck-global-modes '(not LaTeX-mode latex-mode))


;; ========================================
;; Latexmk
;; ========================================
(require 'auctex-latexmk)
(auctex-latexmk-setup)


;; ========================================
;; RefTeX
;; ========================================
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode


(provide 'init-auctex)
