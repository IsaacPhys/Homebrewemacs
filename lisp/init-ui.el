(toggle-frame-fullscreen)

(tool-bar-mode -1)

(scroll-bar-mode -1)

(setq inhibit-splash-screen t)

(setq-default cursor-type 'bar)

(global-hl-line-mode t)

(if (display-graphic-p)
(set-face-attribute
 'default nil :font "Courier New 15")

;; Chinese Font 配制中文字体
;(dolist (charset '(kana han symbol cjk-misc bopomofo))
 ; (set-fontset-font (frame-parameter nil 'font)
  ;                  charset
   ;                 (font-spec :family "STKaiti" :size 16)))
)

;(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-ui)

