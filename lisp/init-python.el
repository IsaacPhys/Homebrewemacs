;;; Package --- Summary:
;;; This package is for my python IDE configurations
;;; Commentary:
;;; This is still being worked
;;; Code:
;; ----- Projectile ----------
;(require 'projectile)
;(projectile-global-mode)

;; ----- Switch Python Version -----
(setq python-shell-interpreter "python3")

;; ----- Set PYTHONPATH ---------
(exec-path-from-shell-copy-env "PYTHONPATH")


;; --------------------------------
;; Indent-Tools
;; --------------------------------
(require 'indent-tools)
(global-set-key (kbd "C-c C-l") 'indent-tools-hydra/body)
(add-hook 'python-mode-hook
 (lambda () (define-key python-mode-map (kbd "C-c C-l") 'indent-tools-hydra/body))
)



;; -----Use Jedi for completion -----
(defun company-jedi-setup ()
  (add-to-list 'company-backends 'company-jedi)
  (jedi-mode))
(add-hook 'python-mode-hook 'company-jedi-setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook 'jedi:setup)


;; ----- YAPF ------
 (use-package yapfify
    :diminish yapf-mode
    :hook (python-mode . yapf-mode))

;; ---- Pytest ------
(require 'pytest)
;
;;; Interactive Programming with IPython
(require 'ein)
(require 'ein-notebook)
(require 'ein-subpackages)
(require 'shackle)
(setq shackle-rules '(("\\`\\*ein: .+?\\.ipynb\\*\\'" :regexp t :same t)))
(shackle-mode)

;;; ------- Python flycheck -------------------
(add-hook 'python-mode-hook
          (lambda ()
            (setq flycheck-python-pylint-executable "/usr/local/bin/pylint")
	    (setq flycheck-python-flake8-executable "/usr/local/bin/flake8")
            (setq flycheck-pylintrc "/home/tools/.pylintrc")))

(setq tab-width 4)
(set-variable 'python-indent-offset 4)
(set-variable 'python-indent-guess-indent-offset nil)


(provide 'init-python)
