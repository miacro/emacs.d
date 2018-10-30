;;; init-plantuml-mode-mode --- Summary
;;; Commentary:
;;; Code:
(require 'plantuml-mode)
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
(provide 'init-plantuml-mode)
;;; init-plantuml-mode-mode ends here
