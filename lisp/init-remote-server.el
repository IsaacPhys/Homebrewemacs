(setq server-use-tcp t
      server-port 9999)
(require 'server)
(defun server-start-and-copy ()
  "start server and copy auth files"
  (when (and (fboundp 'server-running-p)   ; function exists.
             (not (server-running-p)))
    (server-start)                       ; emacs as server mode
    (when (file-exists-p "/rw484@hexcms.rutgers.edu:~/.emacs.d/server/server")
      (delete-file "/rw484@hexcms.rutgers.edu:~/.emacs.d/server/server"))
    (copy-file "~/.emacs.d/server/server" "/rw484@hexcms.rutgers.edu:~/.emacs.d/server/server")
    ))
(add-hook 'emacs-startup-hook 'server-start-and-copy)

(provide 'init-remote-server)
