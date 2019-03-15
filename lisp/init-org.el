(require 'org)
(setq org-src-fontify-natively t)
(add-hook 'org-mode-hook 'toggle-truncate-lines) 
(provide 'init-org)
