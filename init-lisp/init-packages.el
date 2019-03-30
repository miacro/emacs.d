;;; init-packages --- Summary
;;; Commentary:
;;; Code:
(when (require 'el-get nil 'noerror)
  (el-get-bundle use-package)

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

  (el-get-bundle org-mode)
  (use-package init-org-mode)
  (el-get-bundle emms)

  (el-get-bundle slime)
  (use-package init-slime)

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

  (el-get-bundle company-mode)
  (use-package company-mode
    :hook
    (after-init-hook . global-company-mode)
    :config
    (setq company-idle-delay 0)
    (setq company-minimum-prefix-length 2))

  (el-get-bundle slime-company)
  (use-package slime-company
    :requires company-mode
    :config
    (slime-setup '(slime-company)))

  (el-get-bundle company-c-headers)
  (use-package company-c-headers
    :requires company-mode
    :config
    (add-to-list 'company-backends 'company-c-headers))

  (el-get-bundle highlight-symbol)
  (use-package init-highlight-symbol)
  ;;;; ycmd completion
  ;;(el-get-bundle emacs-ycmd)
  ;;(use-package init-emacs-ycmd)

  ;; irony-mode
  (el-get-bundle irony-mode)
  (use-package irony-mode
    :hook
    ((c++-mode-hook . irony-mode)
     (c-mode-hook . irony-mode)
     (objc-mode-hook . irony-mode)
     (irony-mode-hook . irony-cdb-autosetup-compile-options)))
  (el-get-bundle company-irony)
  (use-package company-irony
    :hook
    (irony-mode-hook . company-irony-setup-begin-commands)
    :config
    (add-to-list 'company-backends 'company-irony))
  (el-get-bundle flycheck-irony)
  (use-package flycheck-irony
    :hook
    (flycheck-mode-hook . flycheck-irony-setup))
  (el-get-bundle irony-eldoc)
  (use-package irony-eldoc
    :hook
    (irony-mode-hook . irony-eldoc))

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
    ;; :init
    ;; (add-to-list 'auto-mode-alist '("\\.y$" . bison-mode))
  )

  (el-get-bundle ace-jump-mode)
  (el-get-bundle graphviz-dot-mode)

  ;; (when (not (string= (el-get-read-package-status "elpy") "installed"))
  ;;   (message
  ;;     (shell-command-to-string
  ;;       "pip install --user jedi flake8 importmagic autopep8 yapf")))
  (el-get-bundle elpy)
  (use-package init-elpy
    :ensure-system-package
    ((flake8 . "pip install --user jedi flake8")
     (autopep8 . "pip install --user autopep8")
     (yapf . "pip install --user yapf")))

  (el-get-bundle skewer-mode)
  (use-package skewer-mode
    :init
    (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
    :hook
    ((js2-mode-hook . skewer-mode)
     (css-mode-hook . skewer-css-mode)
     (html-mode-hook . skewer-html-mode)))
  (el-get-bundle rjsx-mode)
  ;;(el-get-bundle ein)

  (el-get-bundle yaml-mode)

  (el-get-bundle dockerfile-mode)
  (use-package dockerfile-mode
    :config
    (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode)))

  (el-get-bundle protobuf-mode)
  (use-package protobuf-mode
    :config
    (add-to-list 'auto-mode-alist '("\\.proto\\'" . protobuf-mode)))

  (el-get-bundle plantuml-mode)
  (use-package plantuml-mode
    :config
    (add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode)))

  (el-get-bundle org-mind-map)
  ;; This is an Emacs package that creates graphviz directed graphs from
  ;; the headings of an org file
  (use-package org-mind-map
    :init
    (require 'ox-org)
    :ensure t
    ;; Uncomment the below if 'ensure-system-packages` is installed
    ;;:ensure-system-package (gvgen . graphviz)
    :config
    (setq org-mind-map-engine "dot")       ; Default. Directed Graph
    ;; (setq org-mind-map-engine "neato")  ; Undirected Spring Graph
    ;; (setq org-mind-map-engine "twopi")  ; Radial Layout
    ;; (setq org-mind-map-engine "fdp")    ; Undirected Spring Force-Directed
    ;; (setq org-mind-map-engine "sfdp")   ; Multiscale version of fdp for the layout of large graphs
    ;; (setq org-mind-map-engine "twopi")  ; Radial layouts
    ;; (setq org-mind-map-engine "circo")  ; Circular Layout
  )
)
(provide 'init-packages)
;;; init-packages ends here
