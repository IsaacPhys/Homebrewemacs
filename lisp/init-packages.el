(require 'cl)
 ;;-----------------------------------------------
 ;; Set Melpa Packages
 ;;-----------------------------------------------
(when (>= emacs-major-version 24)
   (require 'package)
   (unless package--initialized (package-initialize t))
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))

;; Add packages
(defvar my/packages '(
		      exec-path-from-shell
		      ;; --- Auctex ---
		      auctex
		      ;; --- Auto-Complete ---
		      auto-complete
		      ;; --- Better Minibuffer Command and Search ---
		      counsel
		      swiper
                      ;; --- Company Mode ---
                      company
		      ;; --- Grammar Check ---
		      flycheck
		      ;; --- Hungry Delete ---
		      hungry-delete
		      ;; --- Mode Line ---
		      doom-modeline
		      ;; --- Parentheses ---
		      smartparens
		      highlight-parentheses
		      ;; --- Projectile ---
		      projectile
		      ;; --- Python ---
		      jedi
		      company-jedi
		      ein
		      pynt
		      py-autopep8
		      ;; --- Spell Check ---
		      flyspell-correct-popup
		      ;; --- Themes ---
		      doom-themes
		      dracula-theme
		      spacemacs-theme
		      ;; --- Use Package ---
		      use-package
		      ;; -- WebURL ---
		      request
		      request-deferred
		      skewer-mode
		      websocket
		      ) "Default packages")

(setq package-selected-packages my/packages)

(defun  my/packages-installed-p ()
      (loop for pkg in my/packages
	    when (not (package-installed-p pkg)) do (return nil)
	    finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; Let packages that need command line can work
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))




(provide 'init-packages)
