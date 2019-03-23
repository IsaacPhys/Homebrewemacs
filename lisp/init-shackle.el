;(setq shackle-rules '(("\\`\\*ein: .+?\\.ipynb\\*\\'" :regexp t :same t)))
;(setq shackle-rules '((flycheck-error-list-mode :regexp t :align 'below :size 0.3)))
;(setq shackle-rules '((ein:run :regexp t :align 'right :size 0.5)))
;(shackle-mode)
;;(setq display-buffer-alist
;;      '(("^\\*Flycheck errors"
;;	 (display-buffer-reuse-window
;;	  display-buffer-in-side-window)
;;	 (reusable-frames . visible)
;;	 (side            . bottom)
;;	 (window-height   . 0.33))))
;(push '("*Flycheck errors*" :position bottom) popwin:special-display-config)
(use-package shackle
  :demand t
  :config
  (setq shackle-default-rule nil
        shackle-rules '(("\\`\\*ein: .+?\\.ipynb\\*\\'" :regexp t :same t)
                        (flycheck-error-list-mode :align 'below :size 0.3)
			(ein:run :align 'right :size 0.5)))
  (shackle-mode 1))

(provide 'init-shackle)
