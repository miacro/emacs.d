;;; init --- Summary
;;; Commentary:
;;; Code:
;; init load-path
(defun add-to-load-path-recursively (dir)
  "Add DIR to 'load-path' recursively."
  (add-to-list 'load-path dir)
  (dolist (file (directory-files-recursively dir ".*" t))
    (when (file-directory-p file)
      (add-to-list 'load-path file))))

(add-to-load-path-recursively
 (concat (file-name-directory load-file-name) "init-lisp"))
(add-to-load-path-recursively
 (concat (file-name-directory load-file-name) "lisp"))

;; other configs
(dolist (configname '("config" "keybinding" "transparent"))
  (load (concat
          (file-name-directory load-file-name)
          (file-name-as-directory "config")
          configname ".el")))
(dolist (packagename '(miacro-fonts miacro-server))
  (require packagename))
;;(when (file-exists-p custom-file)
;;  (load custom-file))

;; init melpa
(require 'package)
(dolist (repo '(("melpa" . "http://melpa.org/packages/")
                ;; ("melpa-stable" . "http://stable.melpa.org/packages/")
                ;; ("marmalade" . "http://marmalade-repo.org/packages/")
                ;; ("orgmode" . "http://orgmode.org/elpa/")
                ))
  (add-to-list 'package-archives repo t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; init el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get/")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp))
  ;; (package-refresh-contents)
  ;; (package-initialize)
  ;; (package-install 'el-get)
  ;; (require 'el-get)
)

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(require 'init-bootstrap)
(el-get 'sync)
(provide 'init)
;;; init ends here
