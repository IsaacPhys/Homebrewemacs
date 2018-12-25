(setq ispell-program-name "/usr/local/bin/aspell")

(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(setq text-mode-hook '(lambda()  
                       (flyspell-mode t) 
                       ))

(require 'flyspell-correct-popup)
(define-key flyspell-mode-map (kbd "C-j") 'flyspell-correct-at-point)

(provide 'init-spellcheck)
