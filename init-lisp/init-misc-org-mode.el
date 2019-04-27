;;; init-misc-org-mode --- Summary
;;; Commentary:
;;; Code:
(el-get-bundle org-mode)
(use-package org-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
  :bind
  (("\C-cl" . org-store-link)
   ( "\C-cc" . org-capture)
   ("\C-ca" . org-agenda)
   ( "\C-cb" . org-iswitchb))
  :config
  (transient-mark-mode 1)
  (setq truncate-lines nil)
  ;;#+LATEX_HEADER: \usepackage{xeCJK}
  ;;#+LATEX_HEADER: \setCJKmainfont{Source Han Sans CN}
  (setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
                                "xelatex -interaction nonstopmode %f"))
  (setq org-latex-default-packages-alist
        (remove '("AUTO" "inputenc" t) org-latex-default-packages-alist))

  (setq org-html-validation-link nil)
  (setq org-confirm-babel-evaluate nil)

  ;; active Org-babel languages
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(;; other Babel languages
     (plantuml . t)
     (dot . t)))

  (when (el-get-package-installed-p 'plantuml-mode)
    (setq org-plantuml-jar-path plantuml-jar-path)
    (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))))

(el-get-bundle org-mind-map)
;; This is an Emacs package that creates graphviz directed graphs from
;; the headings of an org file
;; commented due to confilct between el-get and package
;; (use-package org-mind-map
;;   :init
;;   (require 'ox-org)
;;   :ensure t
;;   ;; Uncomment the below if 'ensure-system-packages` is installed
;;   ;;:ensure-system-package (gvgen . graphviz)
;;   :config
;;   (setq org-mind-map-engine "dot")       ; Default. Directed Graph
;;   ;; (setq org-mind-map-engine "neato")  ; Undirected Spring Graph
;;   ;; (setq org-mind-map-engine "twopi")  ; Radial Layout
;;   ;; (setq org-mind-map-engine "fdp")    ; Undirected Spring Force-Directed
;;   ;; (setq org-mind-map-engine "sfdp")   ; Multiscale version of fdp for the layout of large graphs
;;   ;; (setq org-mind-map-engine "twopi")  ; Radial layouts
;;   ;; (setq org-mind-map-engine "circo")  ; Circular Layout
;;   )

(provide 'init-misc-org-mode)
;;; init-misc-org-mode ends here
