(require 'cl)
 ;;-----------------------------------------------
 ;; Set Melpa Packages
 ;;-----------------------------------------------
(when (>= emacs-major-version 24)
   (require 'package)
   (unless package--initialized (package-initialize t))
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))
(package-initialize)

;; Add packages
(defvar my/packages '(
		      ;; --- Better Minibuffer ---
		      counsel
		      swiper
		      ;; --- Company Mode ---
		      company
		      company-auctex
		      ;; --- Environment ---
		      exec-path-from-shell
		      ;; --- Evil-Matchit ---
		      evil-matchit
		      ;; --- Frame and Window ---
		      shackle
		      ;; --- Grammar Check ---
		      flycheck
		      ;; --- Hungry Delete ---
		      hungry-delete
		      ;; --- Indent Guide ---
		      highlight-indent-guides
		      ;; --- LaTeX ---
		      auctex
		      auctex-latexmk
		      company-auctex
		      ;; --- Mode Line ---
		      doom-modeline
		      spaceline
		      ;; --- Parentheses ---
		      highlight-parentheses
		      smartparens
		      ;; --- Projectile ---
		      ;projectile
		      ;; --- Python ---
		      company-jedi
		     ; ein
		      indent-tools
		      jedi
		      ;pynt
		     ; pytest
		      yapfify
		      ;; --- Spell Check ---
		      flyspell-correct-popup
		      ;; --- Themes ---
		      doom-themes
		      spacemacs-theme
		      ;; --- Transpose Frame ---
		      transpose-frame
		      ;; --- Use Package ---
		      use-package
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
