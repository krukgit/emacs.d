;; auto-complete
(use-package auto-complete
  :ensure t)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
	     "~/.emacs.d/.cask/24.4.1/elpa/auto-complete-20141111.2346/dict")
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)
(defun ac-ruby-mode-setup ()
  (make-local-variable 'ac-ignores)
  (add-to-list 'ac-ignores "end"))

(menu-bar-mode -1) ;; hide top menu bar

;; line numbers
(line-number-mode t)                     ;; show line numbers
(column-number-mode t)                   ;; show column numbers
(size-indication-mode t)                 ;; show file size (emacs 22+)

;; http://stackoverflow.com/questions/3631220/fix-to-get-smooth-scrolling-in-emacs
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      )

;; trailing whitespace
(setq show-trailing-whitespace t)
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq require-final-newline t)

(setq-default truncate-lines t)  ; disable line wrap

(setq inhibit-startup-message   t)   ; don't want any startup message
(setq search-highlight t) ; highlight search object

;; syntax highlight everywhere
(global-font-lock-mode t)

;; limit line length
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)
(global-whitespace-mode +1)

;; disable auto indent
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

;; backups
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups
