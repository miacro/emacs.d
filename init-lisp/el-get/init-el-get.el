;;; init-el-get --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
    (url-retrieve-synchronously
      "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
;;(add-to-list 'el-get-user-package-directory "~/fq-emacs.d/init-lisp/")

;;; just for test
(defun check-compile-options ()
  (interactive)
  (irony-cdb-json--ensure-project-alist-loaded)
  (irony--aif (irony-cdb-json--locate-db)
              (progn
                (message "I: found compilation database: %s" it)
                (let ((db (irony-cdb-json--load-db it)))
                  (irony--aif (irony-cdb-json--exact-flags db)
                              (progn
                                (message "I: found exact match: %s" it)
                                it)
                              (let ((dir-cdb (irony-cdb-json--compute-directory-cdb db)))
                                (irony--aif (irony-cdb-json--guess-flags dir-cdb)
                                            (message "I: found by guessing: %s" it)
                                            (message "E: guessing failed"))))))
              (message "E: failed to locate compilation database")))
(provide 'init-el-get)
;;; init-el-get ends here
