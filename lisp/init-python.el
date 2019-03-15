;;; Package --- Summary:
;;; This package is for my python IDE configurations
;;; Commentary:
;;; This is still being worked
;;; Code:
;; ----- Projectile ----------
(require 'projectile)
(projectile-global-mode)

;; ----- Switch Python Version -----
(setq python-shell-interpreter "python3")

;; ----- Set PYTHONPATH ---------
(setenv"PYTHONPATH""/Users/isaac/Work/root/6.16.00/lib/root")

;; -----Use Jedi for completion -----
(defun company-jedi-setup ()
  (add-to-list 'company-backends 'company-jedi)
  (jedi-mode))
(add-hook 'python-mode-hook 'company-jedi-setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook 'jedi:setup)

;; Interactive Programming with IPython

;(require 'ein)
;(require 'ein-notebook)
;(require 'ein-subpackages)

;; ------- Python flycheck -------------------
(add-hook 'after-init-hook #'global-flycheck-mode)


;; Autopep, automatically formatting
(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(setq python-indent-offset 4)

(setq tab-width 4)
(set-variable 'python-indent-offset 4)
(set-variable 'python-indent-guess-indent-offset nil)




(provide 'init-python)
