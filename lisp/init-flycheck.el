(use-package flycheck
  :diminish flycheck-mode
  :hook (after-init . global-flycheck-mode)
  :config
  (setq flycheck-indication-mode 'left-fringe)
  (setq flycheck-emacs-lisp-load-path 'inherit)
  (setq flycheck-checker-error-threshold 10000)
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))
(provide 'init-flycheck)
