;; enhanced ruby mode
(use-package enh-ruby-mode
  :ensure t)
(setq enh-ruby-program "/Users/kruk/.rvm/rubies/ruby-2.1.3/bin/ruby")
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

;; rinari
(use-package rinari
  :ensure t)
(require 'rinari)

;; rhtml
(use-package rhtml-mode
  :ensure t)
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
	  (lambda () (rinari-launch)))

(use-package yaml-mode
  :ensure t)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; rubocop
(use-package dash
  :ensure t)

(require 'rubocop)

;; elpa/rubocop-20141221.1329/
;; (use-package rubocop
;;   :ensure t)
