;;; init-slime-company --- Summary
;;; Commentary:
;;; Code:
;;(require 'slime-company)
(slime-setup '(slime-company))
(define-key company-active-map (kbd "\C-n") 'company-select-next)
(define-key company-active-map (kbd "\C-p") 'company-select-previous)
(define-key company-active-map (kbd "\C-d") 'company-show-doc-buffer)
(define-key company-active-map (kbd "<tab>") 'company-complete)
(provide 'init-slime-company)
;;; init-slime-company ends here
