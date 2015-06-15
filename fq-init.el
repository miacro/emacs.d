;;; fq-init --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/fq-emacs.d/lisp")

(require 'fq-elpa)
(require 'fq-package-install)
(require 'fq-slime)
(require 'fq-yasnippet)
;; auto-complete completion
;;(require 'fq-auto-complete)
;;(require 'fq-auto-complete-clang)
;;(require 'fq-auto-complete-clang-async)
(require 'fq-w3m)
(require 'fq-ecb)
(require 'fq-smex)
(require 'fq-pcomplete)
(require 'fq-evil)
(require 'fq-magit)
(require 'fq-git)
(require 'fq-doxymacs)
(require 'fq-company)
(require 'fq-slime-company)
(require 'fq-company-cmake)
;; ycmd completion
;;(require 'fq-ycmd)
(require 'fq-flycheck)
(require 'fq-highlight-defined)
(require 'fq-google-c-style)

(require 'fq-fonts)
(require 'fq-theme)
(require 'fq-transparent)
(require 'fq-keybinding)
(require 'fq-config)
(provide 'fq-init)
;;; fq-init ends here
