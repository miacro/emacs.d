;;; init --- Summary
;;; Commentary:
;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)
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

(add-to-list 'load-path "~/.emacs.d/el-get/el-get/")
(unless (require 'el-get nil 'noerror)
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get))

(require 'el-get)
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
(package-initialize)

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

(when (require 'el-get nil 'noerror)
  (el-get-bundle helm)
  (require 'init-helm)

  (el-get-bundle 2048.el)
  (el-get-bundle color-theme)
  (el-get-bundle color-theme-solarized)

  (el-get-bundle org-mode)
  (el-get-bundle emms)
  (el-get-bundle js2-mode)
  (el-get-bundle s)
  (el-get-bundle f)
  (el-get-bundle let-alist)

  (el-get-bundle slime)
  (require 'init-slime)
  (el-get-bundle yasnippet)
  (require 'init-yasnippet)
  ;;(el-get-bundle auto-complete)
  ;;(el-get-bundle auto-complete-clang)
  ;;(el-get-bundle clang-complete-async)

  (el-get-bundle emacs-w3m)
  (require 'init-emacs-w3m)
  ;;(el-get-bundle ecb)
  ;;(require 'init-ecb)
  ;;(el-get-bundle smex)
  ;;(require 'init-smex)

  ;;(el-get-bundle elpa:undo-tree)
  (el-get-bundle evil)
  (require 'init-evil)

  (el-get-bundle ghub)
  (el-get-bundle magit)

  (require 'init-magit)
  ;; (el-get-bundle doxymacs)
  ;; (require 'init-doxymacs)
  (el-get-bundle flycheck)
  (require 'init-flycheck)
  (el-get-bundle google-c-style)
  (require 'init-google-c-style)
  (el-get-bundle slim-mode)
  (require 'init-slim-mode)

  (el-get-bundle company-mode)
  (require 'init-company-mode)
  (el-get-bundle slime-company)
  (require 'init-slime-company)
  ;;(el-get-bundle company-cmake)
  ;;(require 'init-company-cmake)
  (el-get-bundle company-c-headers)
  (require 'init-company-c-headers)
  (el-get-bundle highlight-symbol)
  (require 'init-highlight-symbol)
  ;;;; ycmd completion
  ;;(el-get-bundle emacs-ycmd)
  ;;(require 'init-emacs-ycmd)

  ;; irony-mode
  ;;(el-get-bundle irony-mode)
  ;;(require 'init-irony-mode)
  ;;(el-get-bundle company-irony)
  ;;(require 'init-company-irony)
  ;;(el-get-bundle flycheck-irony)
  ;;(require 'init-flycheck-irony)
  ;;(el-get-bundle irony-eldoc)
  ;;(require 'init-irony-eldoc)

  ;; rtags
  ;;(el-get-bundle rtags)

  (el-get-bundle clang-format)
  (require 'init-clang-format)
  (el-get-bundle e2wm)
  (require 'init-e2wm)
  (el-get-bundle bison-mode)
  (require 'init-bison-mode)

  ;;(el-get-bundle srefactor)
  ;;(require 'init-srefactor)
  (el-get-bundle ace-jump-mode)
  (el-get-bundle graphviz-dot-mode)

  (when (not (string= (el-get-read-package-status "elpy") "installed"))
    (message
      (shell-command-to-string
        "pip install --user jedi flake8 importmagic autopep8 yapf")))
  (el-get-bundle elpy)
  (require 'init-elpy)
  ;;(el-get-bundle skewer-mode)
  ;;(el-get-bundle ein)

  (el-get-bundle yaml-mode)

  (el-get-bundle dockerfile-mode)
  (require 'dockerfile-mode)

  (require 'miacro-fonts)
  (require 'theme)
  (require 'transparent)
  (require 'keybinding)
  (require 'config))
  (require 'miacro-server)

(provide 'init)
;;; init ends here
