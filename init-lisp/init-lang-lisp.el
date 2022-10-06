;;; init-lang-lisp --- Summary
;;; Commentary:
;;; Code:
(el-get-bundle slime)
(use-package slime
  :config
  ;; (require 'slime-autoloads)
  ;;(load (expand-file-name "~/quicklisp/slime-helper.el"))
  (setq inferior-lisp-program (executable-find "sbcl"))
  (setq slime-contribs '(slime-fancy)))

(el-get-bundle slime-company)
(use-package slime-company
  :requires company-mode
  :config
  (slime-setup '(slime-company)))

(provide 'init-lang-lisp)
;;; init-lang-lisp ends here
