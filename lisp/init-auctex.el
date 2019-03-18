(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))  
(setq exec-path (append exec-path '("/Library/TeX/texbin/")))

;; ========================================
;; AucTeX settings
;; ========================================
(setq TeX-auto-save t)
(setq TeX-parse-self t)

;; ========================================
;; Latexmk
;; ========================================
(require 'auctex-latexmk)
(auctex-latexmk-setup)

;; ========================================
;; Company-Auctex
;; ========================================
(require 'company-auctex)
(company-auctex-init)

(provide 'init-auctex)
