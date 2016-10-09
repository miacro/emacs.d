;;; init-melpa-setup --- Summary
;;; Commentary:
;;; Code:
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
;;(add-to-list 'package-archives
;;             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;;(add-to-list 'package-archives
;;             '("marmalade" . "http://marmalade-repo.org/packages/") t)
;;(add-to-list 'package-archives
;;             '("orgmode" . "http://orgmode.org/elpa/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(provide 'init-melpa-setup)
;;; init-melpa-setup ends here
