(setq max-specpdl-size 5)  ; default is 1000, reduce the backtrace level
(setq debug-on-error t)    ; now you should get a backtrace


(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ))
(require 'package)
(package-initialize)

;; set PATH to system PATH
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

(add-to-list 'load-path "~/.emacs.d/custom")
(load "00-common.el")
(load "01-ruby.el")
(load "02-web.el")
