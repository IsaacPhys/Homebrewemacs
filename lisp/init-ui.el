(tool-bar-mode -1)

(scroll-bar-mode -1)

(toggle-frame-fullscreen)

(setq inhibit-splash-screen t)

(setq-default cursor-type 'bar)

(setq sp-highlight-pair-overlay nil) 

;(global-hl-line-mode t)

(set-default-font "Courier New-16") 

(if (display-graphic-p)
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset (font-spec :family "STKaiti" :size 18)))
)

;(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-ui)

