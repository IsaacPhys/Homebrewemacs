;; Turn off tool-bar
(tool-bar-mode -1)

;; Turn off scroll-bar
(scroll-bar-mode -1)
;
;;; Show linum-mode
(global-display-line-numbers-mode t)

;; Change cursor type 
(setq-default cursor-type 'bar)

;; Full Screen
;(toggle-frame-fullscreen)

;(setq default-frame-alist
;      `((top . 0)
;        (left . 0)
;        (width . 78)
;        (height . 50)
;        ))

;(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; ----------------------------------------------
;; Set Spacemacs Logo
;; ----------------------------------------------
(defcustom MySpacemacs-logo (expand-file-name "spacemacs.png" user-emacs-directory)
  "Set Centaur logo. nil means official logo."
  :type 'string)
(if (display-graphic-p)
     (progn    
    (setq dashboard-startup-banner (or MySpacemacs-logo 'official))
    (setq fancy-splash-image MySpacemacs-logo)))
;; -----------------------------------------------
;; Font Set
;; -----------------------------------------------
(add-to-list 'default-frame-alist
             '(font . "Source Code Pro-14"))
(set-frame-font "Source Code Pro-14")
;;中文字体配置
(if (display-graphic-p)
    (progn
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
	(set-fontset-font (frame-parameter nil 'font)
			  charset
			  (font-spec :family "STKaiti" :size 16)))))

;;-----------------------------------------------
;; Modeline
;;-----------------------------------------------
;(require 'doom-modeline)
;(doom-modeline-init)
;(use-package doom-modeline
;      :ensure t
;      :defer t
;      :hook (after-init . doom-modeline-init))
(if (display-graphic-p)
    (progn
      (require 'spaceline-config)
      (spaceline-spacemacs-theme))
  (progn
    (require 'doom-modeline)
    (doom-modeline-init)
    (use-package doom-modeline
      :ensure t
      :defer t)))

;;------------------------------------------------
;; Themes
;;------------------------------------------------
(add-to-list 'custom-theme-load-path
	     "~/.emacs.d/themes/") 
(if (display-graphic-p)
   ; (progn
    ;  (require 'doom-themes)
    (load-theme 'spacemacs-dark t)
  (load-theme 'homebrew t))


; Get dark app bar on MacOS
(add-to-list 'default-frame-alist '(ns-appearance . dark))




(provide 'init-ui)
