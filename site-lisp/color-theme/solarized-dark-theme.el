;;; solarized-dark-theme.el --- Custom face theme for Emacs

;; Copyright (C) 2010 ad.

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

;; Note: This is, more or less, the same version as in
;; https://gist.github.com/888286 but converted for Emacs 24.

(deftheme solarized-dark
  "")

(custom-theme-set-faces
 'solarized-dark
 '(default ((t (:background "#002b36" :foreground "#93a1a1")))) ;; fg "should" be #657b83
 '(cursor ((t (:background "#586e75" :foreground "#657b83")))) ;; fg "should" be #93a1a1
 '(region ((t (:background "#073642"))))
 '(mode-line ((t (:background "#586e75" :foreground "#073642"))))
 '(mode-line-inactive ((t (:background "#839496" :foreground "#657b83"))))
 '(fringe ((t (:foreground "#586e75" :background "#255460"))))
 '(minibuffer-prompt ((t (:foreground "#268bd2"))))
 '(font-lock-builtin-face ((t (:foreground "#859900"))))
 '(font-lock-comment-face ((t (:foreground "#586e75" :italic t)))) ; italic ja!
 '(font-lock-constant-face ((t (:foreground "#2aa198"))))
 '(font-lock-function-name-face ((t (:foreground "#268bd2"))))
 '(font-lock-keyword-face ((t (:foreground "#859900"))))
 '(font-lock-string-face ((t (:foreground "#2aa198"))))
 '(font-lock-type-face ((t (:foreground "#b58900"))))
 '(font-lock-variable-name-face ((t (:foreground "#268bd2"))))
 '(font-lock-warning-face ((t (:foreground "#d30102" :weight bold))))
 '(isearch ((t (:foreground "#b58900" :inverse-video t))))
 '(lazy-highlight ((t (:background "#073642")))) ; second highlight, typ?
 '(link ((t (:foreground "#6c71c4" :underline t))))
 '(link-visited ((t (:foreground "#8b008b" :underline t)))) ;; eh?
 '(button ((t (:underline t :background "#073642"))))
 '(header-line ((t (:background "#eee8d5" :foreground "#839496"))))
 
 ;; magit
 '(magit-item-highlight ((t (:foreground "#93a1a1" :background "#255460"))))
 
 ;; hl-line
 '(hl-line ((t (:foreground "#93a1a1" :background "#255460")))))

(provide-theme 'solarized-dark)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; solarized-theme.el  ends here
