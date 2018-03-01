(tool-bar-mode -1)

(scroll-bar-mode -1)

(toggle-frame-fullscreen)

(setq inhibit-splash-screen t)

(setq-default cursor-type 'bar)

(setq sp-highlight-pair-overlay nil)

(setq require-final-newline t)

(setq Man-notify-method 'pushy)
;(global-hl-line-mode t)

(set-default-font "Courier New-14") 

(if (display-graphic-p)
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset (font-spec :family "STKaiti" :size 14)))
) 

;(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-ui)

