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

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)


(provide 'init-better-defaults)
