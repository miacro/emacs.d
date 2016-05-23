;;; init-slime --- Summary
;;; Commentary:
;;; Code:
(require 'slime-autoloads)
;;(load (expand-file-name "~/quicklisp/slime-helper.el"))
;;(setq inferior-lisp-program "sbcl")
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(provide 'init-slime)
;;; init-slime ends here
