;;; init-packages --- Summary
;;; Commentary:
;;; Code:
(when (require 'el-get nil 'noerror)
  (el-get-bundle use-package)

  (el-get-bundle helm)
  (require 'init-helm)

  (el-get-bundle 2048.el)

  (el-get-bundle color-theme)
  (el-get-bundle color-theme-solarized)
  (use-package color-theme-solarized
    :requires color-theme
    :config
    (load-theme 'solarized t)
    (when (display-graphic-p) nil))

  (el-get-bundle org-mode)
  (require 'init-org-mode)
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

  (el-get-bundle protobuf-mode)
  (require 'init-protobuf-mode)
  (require 'dockerfile-mode)

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
