;;;; This part is from the video 'Emacs as python IDE' on YouTube.
(require 'projectile)
(projectile-global-mode)
;(require 'auto-complete-config)
;(ac-config-default)
;(require 'jedi)
;;(add-to-list 'ac-sources 'ac-source-jedi-direct)
;(add-hook 'python-mode-hook 'jedi:setup)
;;(defvar jedi_config:with-virtualenv nil
;;  "Set to non-nil to point to a particular virtualenv.")
;;;; Variables to help find the project root
;;(defvar jedi_config:vca-root-sentinel ".git")
;;(defvar jedi_config:python-module-sentinel "__init__.py")
;;   ;; Function to find project root given a buffer
;;(defun get-project-root (buf repo-type init-file)
;;  (vc-find-root (expand-file-name (buffer-file-name buf)) repo-type))
;; ;; And call this on initialization
;;(defun current-buffer-project-root ()
;;  (funcall jedi-config:find-root-function
;;	   (current-buffer)
;;	   jedi-config:vcs-root-sentinel
;;	   jedi-config:python-module-sentinel))
;;
;;(defun jedi-config:setup-server-args ()
;;       ;; little helper macro
;;       (defmacro add-args (arg-list arg-name arg-value)
;;         `(setq ,arg-list (append ,arg-list (list ,arg-name ,arg-value))))
;;       (let ((project-root (current-buffer-project-root)))
;;         ;; Variable for this buffer only
;;         (make-local-variable 'jedi:server-args)
;;
;;         ;; And set our variables
;;         (when project-root
;;           (add-args jedi:server-args "--sys-path" project-root))
;;         (when jedi-config:with-virtualenv
;;               (add-args jedi:server-args "--virtual-env"
;;                         jedi-config:with-virtualenv))))
;;(when project-root
;;  (add-args jedi:server-args "--sys-path" project-root))
;;(when jedi-config:with-virtualenv
;;      (add-args jedi:server-args "--virtual-env"
;;                jedi-config:with-virtualenv))
;;
;;----------- Above is the configuration from the YouTube --------------

;; -----Use Jedi for completion -----
(defun company-jedi-setup ()
  (add-to-list 'company-backends 'company-jedi)
  (jedi-mode))
(add-hook 'python-mode-hook 'company-jedi-setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook 'jedi:setup)

;(add-hook 'python-mode-hook 'jedi:ac-setup)
;; -------------------------------------------

;(require 'lsp-mode)
;(require 'lsp-python)
					;(add-hook 'python-mode-hook #'lsp-python-enable)
;; Interactive Programming with IPython
(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args "-i")

;; Python flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)


;; Autopep, automatically formatting
(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(setq python-indent-offset 4)

(setq tab-width 4)
(set-variable 'python-indent-offset 4)
(set-variable 'python-indent-guess-indent-offset nil)

(provide 'init-python)
