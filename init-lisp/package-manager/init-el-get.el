;;; init-el-get --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;;(unless (require 'el-get nil 'noerror)
;;  (with-current-buffer
;;    (url-retrieve-synchronously
;;      "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
;;    (goto-char (point-max))
;;    (eval-print-last-sexp)))

(unless (require 'el-get nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.org/packages/"))
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
;;(add-to-list 'el-get-user-package-directory "~/emacs.d/init-lisp/")

(provide 'init-el-get)
;;; init-el-get ends here
