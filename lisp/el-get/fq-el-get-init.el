;;; fq-el-get-init --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'el-get-user-package-directory "~/fq-emacs.d/init-lisp")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
    (url-retrieve-synchronously
      "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
(provide 'fq-el-get-init)
;;; fq-el-get-init ends here
