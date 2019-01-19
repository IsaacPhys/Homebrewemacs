(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))  
(setq exec-path (append exec-path '("/Library/TeX/texbin/")))

;; ========================================
;; AucTeX settings
;; ========================================

(setq TeX-auto-save t)
(setq TeX-parse-self t)
;;(reftex-moede t)

(add-hook 'LaTeX-mode-hook 
		  (lambda()
			(add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
			(setq TeX-command-default "XeLaTeX")
			(setq TeX-save-query nil )
			(setq TeX-show-compilation t)
			))

(add-hook 'latex-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-auctex t)

(setq-default TeX-master nil)

(provide 'init-auctex)
