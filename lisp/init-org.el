(require 'org)
(setq org-src-fontify-natively t)
(add-hook 'org-mode-hook 'toggle-truncate-lines)
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(setq org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.5 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\["))))
(provide 'init-org)
