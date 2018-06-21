(require 'cl)
 ;;-----------------------------------------------
 ;; Set Melpa Packages
 ;;-----------------------------------------------
(when (>= emacs-major-version 24)
   (require 'package)
   (unless package--initialized (package-initialize t))
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))


 ;;add whatever packages you want here
(defvar my/packages '(
                      ;; --- Auctex ---
		      auctex
		      ;; --- Auto-completion ---
		      company
		      company-auctex
		      company-irony
		      company-irony-c-headers
		      ;; --- Better Editor ---
		      swiper
		      counsel
		      counsel-gtags
		      smartparens
		      highlight-parentheses
		      ;; --- CMake ---
		      ;cpputils-cmake
		      cmake-mode
		      cmake-ide
		      ;; --- Flycheck ---
		      flycheck
		      flycheck-irony
		      flycheck-rtags
		      ;; --- Irony Mode ---
		      irony
		      ;; --- MacOS Finder ---
		      reveal-in-osx-finder
		      ;; --- Major Mode ---
		      js2-mode
		      ;; --- Minor Mode ---
		      nodejs-repl
		      exec-path-from-shell
		      ;; --- Neotree ---
		      ;neotree
		      ;; --- Popwin ---
		      popwin
		      ;; --- RTags ---
		      rtags
		      company-rtags
		      helm-rtags
		      ;; --- Themes ---
                      color-theme
		      ;cyberpunk-theme
		      ;danneskjold-theme
		      ;exotica-theme
		      ;kaolin-themes
		      ;bubbleberry-theme
		      ;seti-theme
		      ;sublime-themes
		      ;material-theme
		      ;atom-dark-theme
		      ;; --- Window Number ---
		      window-number
		      ;; --- Wolfram ---
		      wolfram
		      wolfram-mode
		      ;; --- Yasnippet ---
		      yasnippet
		      yasnippet-snippets
		     
		      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; let emacs found execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

 ;;------------------------------------------------
 ;; Auctex Environment
 ;;------------------------------------------------
(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))  
(setq exec-path (append exec-path '("/Library/TeX/texbin/")))



 ;;------------------------------------------------
 ;; CMake-Mode
 ;;------------------------------------------------
 ;company,ctrl+tab启动，可以自动提示CMakeLists.txt，同时c-mode,c++mode下也有自动提示
;(add-to-list 'load-path "~/.emacs.d/plugins/company")
;(autoload 'company-mode "company" nil t)
;(setq company-idle-delay nil)
;(add-hook 'c-mode-hook '(lambda () (company-mode)))
(add-hook 'c++-mode-hook '(lambda () (company-mode)))
(cmake-ide-setup)

 ;;------------------------------------------------
 ;; Company
 ;;------------------------------------------------
(require 'company)
(global-company-mode t)


 ;;------------------------------------------------
 ;; Company-Irony
 ;;------------------------------------------------
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
(setq company-backends (delete 'company-semantic company-backends))
(require 'company-irony-c-headers)
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))
 ;; Enable TAB-completion with no delay
(setq company-idle-delay 0)
(require 'cc-mode)
(define-key c-mode-map [(tab)] 'company-complete)
(define-key c++-mode-map [(tab)] 'company-complete)
 


 ;;------------------------------------------------
 ;; Cpputils-CMake
 ;;------------------------------------------------
;;(add-hook 'c-mode-common-hook
;;          (lambda ()
;;            (if (derived-mode-p 'c-mode 'c++-mode)
;;                (cppcm-reload-all)
;;              )))
;;;; OPTIONAL, somebody reported that they can use this package with Fortran
;;(add-hook 'c90-mode-hook (lambda () (cppcm-reload-all)))
;;;; OPTIONAL, avoid typing full path when starting gdb
;;(global-set-key (kbd "C-c C-g")
;; '(lambda ()(interactive) (gud-gdb (concat "gdb --fullname " (cppcm-get-exe-path-current-buffer)))))
;;;; OPTIONAL, some users need specify extra flags forwarded to compiler
;;(setq cppcm-extra-preprocss-flags-from-user '("-I/usr/src/linux/include" "-DNDEBUG"))

 ;;------------------------------------------------
 ;; Flycheck
 ;;------------------------------------------------
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(require 'flycheck-rtags)

(defun my-flycheck-rtags-setup ()
  (flycheck-select-checker 'rtags)
  (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
  (setq-local flycheck-check-syntax-automatically nil))
;; c-mode-common-hook is also called by c++-mode
(add-hook 'c-mode-common-hook #'my-flycheck-rtags-setup)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))


 ;;-----------------------------------------------
 ;; Hungry Delete
 ;;-----------------------------------------------      
;(global-hungry-delete-mode t)


 ;;------------------------------------------------
 ;; Irony Mode
 ;;------------------------------------------------
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))

(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)


 ;;------------------------------------------------
 ;; js2-mode
 ;;------------------------------------------------
;config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))
(require 'nodejs-repl)



 ;;-----------------------------------------------
 ;; Parantheses 
 ;;-----------------------------------------------
(require 'highlight-parentheses) 
(define-globalized-minor-mode global-highlight-parentheses-mode  
  highlight-parentheses-mode  
  (lambda ()  
    (highlight-parentheses-mode t)))  
(global-highlight-parentheses-mode t)
(electric-pair-mode t)
;(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

 ;;------------------------------------------------
 ;; Popwin
 ;;------------------------------------------------
(require 'popwin)  
(popwin-mode t)


 ;;------------------------------------------------
 ;; RTags
 ;;------------------------------------------------
(require 'rtags)
(require 'company-rtags)
(load-file "~/.emacs.d/rtags/src/rtags.el")
(set-variable 'rtags-path "~/.emacs.d/rtags/bin")
(setq rtags-completions-enabled t)
(eval-after-load 'company
  '(add-to-list
    'company-backends 'company-rtags))
(setq rtags-autostart-diagnostics t)
(rtags-enable-standard-keybindings)

;; To enable Helm integration
;(require 'helm-rtags)
(setq rtags-use-helm t)


 ;;------------------------------------------------
 ;; Swipe and Ivy Mode
 ;;------------------------------------------------
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)


 ;;------------------------------------------------
 ;; Themes
 ;;------------------------------------------------
(require 'color-theme)
(color-theme-initialize)
(add-to-list 'custom-theme-load-path
	     "~/.emacs.d/themes/")
					;(color-theme-granger)
(if (display-graphic-p)
    (load-theme 'homebrew t)
  (load-theme 'homebrew t))

 ;;---------------------------
 ;; Wolfram Mode
 ;;---------------------------
(autoload 'wolfram-mode "wolfram-mode" nil t)
(autoload 'run-wolfram "wolfram-mode" nil t)
(setq wolfram-program "/Applications/Mathematica.app/Contents/MacOS/MathKernel")
(add-to-list 'auto-mode-alist '("\.m$" . wolfram-mode))
(setq wolfram-path "~/Library/Mathematica/Applications")

 ;;------------------------------------------------
 ;; Yasnippet Mode
 ;;------------------------------------------------
(require 'yasnippet)
(yas-global-mode 1)


 ;;------------------------------------------------
 ;; Window Number
 ;;------------------------------------------------
;(require 'window-number)
;(window-number-mode 1)
;(window-number-meta-mode 1)



(provide 'init-packages)
