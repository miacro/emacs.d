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
(dolist (configname '("config" "keybinding" "transparent" "proxy"))
  (let ((config-file
         (concat
          (file-name-directory load-file-name)
          (file-name-as-directory "config")
          configname ".el")))
    (when (file-exists-p config-file)
      (load config-file))))

(dolist (packagename '(miacro-fonts miacro-server miacro-utils))
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

;; init straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(require 'init-bootstrap)
(el-get 'sync)
(provide 'init)
;;; init ends here
