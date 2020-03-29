;;; pynt-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pynt" "pynt.el" (0 0 0 0))
;;; Generated autoloads from pynt.el

(autoload 'pynt-mode "pynt" "\
Minor mode for generating and interacting with jupyter notebooks via EIN

\\{pynt-mode-map}

\(fn &optional ARG)" t nil)

(add-hook 'python-mode-hook (lambda nil (when (not (string-match-p (regexp-quote "ein:") (buffer-name))) (pynt-mode))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pynt" '("pynt-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pynt-autoloads.el ends here
