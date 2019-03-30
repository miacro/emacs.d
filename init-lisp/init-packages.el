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
  (use-package init-yasnippet)
  ;;(el-get-bundle auto-complete)
  ;;(el-get-bundle auto-complete-clang)
  ;;(el-get-bundle clang-complete-async)

  (el-get-bundle emacs-w3m)
  (use-package init-emacs-w3m)
  ;;(el-get-bundle ecb)
  ;;(use-package init-ecb)
  ;;(el-get-bundle smex)
  ;;(use-package init-smex)

  ;;(el-get-bundle elpa:undo-tree)
  (el-get-bundle evil)
  (use-package init-evil)

  (el-get-bundle ghub)
  (el-get-bundle magit)

  (use-package init-magit)
  ;; (el-get-bundle doxymacs)
  ;; (use-package init-doxymacs)
  (el-get-bundle flycheck)
  (use-package init-flycheck)
  (el-get-bundle google-c-style)
  (use-package init-google-c-style)
  (el-get-bundle slim-mode)
  (use-package init-slim-mode)

  (el-get-bundle company-mode)
  (use-package init-company-mode)
  (el-get-bundle slime-company)
  (use-package init-slime-company)
  ;;(el-get-bundle company-cmake)
  ;;(use-package init-company-cmake)
  (el-get-bundle company-c-headers)
  (use-package init-company-c-headers)
  (el-get-bundle highlight-symbol)
  (use-package init-highlight-symbol)
  ;;;; ycmd completion
  ;;(el-get-bundle emacs-ycmd)
  ;;(use-package init-emacs-ycmd)

  ;; irony-mode
  ;;(el-get-bundle irony-mode)
  ;;(use-package init-irony-mode)
  ;;(el-get-bundle company-irony)
  ;;(use-package init-company-irony)
  ;;(el-get-bundle flycheck-irony)
  ;;(use-package init-flycheck-irony)
  ;;(el-get-bundle irony-eldoc)
  ;;(use-package init-irony-eldoc)

  ;; rtags
  ;;(el-get-bundle rtags)

  (el-get-bundle clang-format)
  (use-package init-clang-format)
  (el-get-bundle e2wm)
  (use-package init-e2wm)
  (el-get-bundle bison-mode)
  (use-package init-bison-mode)

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
    (js2-mode-hook . skewer-mode)
    (css-mode-hook . skewer-css-mode)
    (html-mode-hook . skewer-html-mode))
  (el-get-bundle rjsx-mode)
  ;;(el-get-bundle ein)

  (el-get-bundle yaml-mode)

  (el-get-bundle dockerfile-mode)

  (el-get-bundle protobuf-mode)
  (use-package init-protobuf-mode)
  (use-package dockerfile-mode)

  (el-get-bundle plantuml-mode)
  (use-package plantuml-mode
    :config
    (add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode)))

  (package-install 'org-mind-map)
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
