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

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; -----------------------------------------------
;; Font Set
;; -----------------------------------------------
(add-to-list 'default-frame-alist
             '(font . "Source Code Pro-14"))
(set-frame-font "Source Code Pro-14")

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
