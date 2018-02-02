;;; init-org-mode --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(transient-mark-mode 1)
(setq truncate-lines nil)

;;;#+LATEX_HEADER: \usepackage{xeCJK}
;;;#+LATEX_HEADER: \setCJKmainfont{Source Han Sans CN}
(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
                              "xelatex -interaction nonstopmode %f"))
(setq org-latex-default-packages-alist
      (remove '("AUTO" "inputenc" t) org-latex-default-packages-alist))
(require 'org-mode)
(provide 'init-org-mode)
;;; init-org-mode ends here
