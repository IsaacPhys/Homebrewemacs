(setq ring-bell-function 'ignore)

(global-linum-mode t)

(global-auto-revert-mode t)

(abbrev-mode t)

(electric-indent-mode 1)

(setq make-backup-files nil)

(setq auto-save-default nil)

(delete-selection-mode t)

(recentf-mode 1)
(setq recentf-max-menu-items 25)

(defun indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min)(point-max)))

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region."))
      (progn
	(indent-buffer)
	(message "Indented buffer.")))))


(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))
(put 'dired-find-alternate-file 'disabled nil)

(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(setq dired-dwim-target t)

(require 'dired-x)

(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-better-defaults)
