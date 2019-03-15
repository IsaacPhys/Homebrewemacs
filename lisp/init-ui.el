;; Turn off tool-bar
(tool-bar-mode -1)

;; Turn off scroll-bar
(scroll-bar-mode -1)

;; Show linum-mode
(global-linum-mode t)

;; Change cursor type 
(setq-default cursor-type 'bar)

;; Full Screen
(toggle-frame-fullscreen)

;; -----------------------------------------------
;; Font Set
;; -----------------------------------------------
(add-to-list 'default-frame-alist
             '(font . "Courier New-15"))
(set-frame-font "Courier New-15")

;;-----------------------------------------------
;; Modeline
;;-----------------------------------------------
(require 'doom-modeline)
(doom-modeline-init)
(use-package doom-modeline
      :ensure t
      :defer t
      :hook (after-init . doom-modeline-init))


;;------------------------------------------------
;; Themes
;;------------------------------------------------
(add-to-list 'custom-theme-load-path
	     "~/.emacs.d/themes/") 
(if (display-graphic-p)
   ; (progn
    ;  (require 'doom-themes)
    (load-theme 'doom-one t)
  (load-theme 'homebrew t))


; Get dark app bar on MacOS
(add-to-list 'default-frame-alist '(ns-appearance . dark))




(provide 'init-ui)
