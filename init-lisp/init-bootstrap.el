;;; init-bootstrap --- Summary
;;; Commentary:
;;; Code:
(when (require 'el-get nil 'noerror)
  (el-get-bundle use-package)

  (require 'init-misc-company)
  (require 'init-misc-javascript)

  (require 'init-misc-python)
  (require 'init-misc-irony)
  (require 'init-misc-lisp)
  (require 'init-misc-org-mode)
  (el-get-bundle helm)
  (use-package helm
    :requires helm-config ; Not needed if you use package.el
    :config
    (global-set-key (kbd "M-x") 'helm-M-x)
    (global-set-key (kbd "C-x C-f") 'helm-find-files)
    (helm-mode 1))

  (el-get-bundle color-theme)
  (el-get-bundle color-theme-solarized)
  (use-package color-theme-solarized
    :requires color-theme
    :config
    (load-theme 'solarized t)
    (when (display-graphic-p) nil))

  (el-get-bundle emms)

  (el-get-bundle yasnippet)
  (use-package yasnippet
    :config
    (yas-reload-all))

  (el-get-bundle emacs-w3m)
  ;;(el-get-bundle ecb)
  ;;(el-get-bundle smex)

  ;;(el-get-bundle elpa:undo-tree)
  (el-get-bundle evil)
  (use-package evil
    :config
    (evil-mode 0))

  (el-get-bundle magit)
  (use-package magit
    :config
    (setq magit-auto-revert-mode nil)
    (setq magit-last-seen-setup-instructions "1.4.0"))

  (el-get-bundle flycheck)
  (use-package flycheck
    :hook
    (after-init-hook . global-flycheck-mode))

  (el-get-bundle google-c-style)
  (use-package google-c-style
    :hook
    ((c-mode-common-hook . google-set-c-style)
     (c-mode-common-hook . google-make-newline-indent)))

  (el-get-bundle slim-mode)
  (use-package slim-mode)
  (el-get-bundle highlight-symbol)
  (use-package init-highlight-symbol)
  ;;;; ycmd completion
  ;;(el-get-bundle emacs-ycmd)
  ;;(use-package init-emacs-ycmd)

  ;; rtags
  ;;(el-get-bundle rtags)

  (el-get-bundle clang-format)
  (use-package clang-format
    ;; :hook
    ;; (before-save-hook . clang-format-buffer)
    :bind
    (("C-=" . clang-format)
     ("C-|" . clang-format-buffer)))

  (el-get-bundle e2wm)
  (use-package e2wm
    :bind
    (("M-+" . e2wm:start-management)))

  (el-get-bundle bison-mode)
  (use-package bison-mode
    :init
    (add-to-list 'auto-mode-alist '("\\.y$" . bison-mode)))
  (el-get-bundle ace-jump-mode)
  (el-get-bundle graphviz-dot-mode)
  (el-get-bundle yaml-mode)
  (el-get-bundle dockerfile-mode)
  (use-package dockerfile-mode
    :init
    (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode)))
  (el-get-bundle protobuf-mode)
  (use-package protobuf-mode
    :init
    (add-to-list 'auto-mode-alist '("\\.proto\\'" . protobuf-mode)))
  (el-get-bundle plantuml-mode)
  (use-package plantuml-mode
    :init
    (add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode)))
)
(provide 'init-bootstrap)
;;; init-bootstrap ends here
