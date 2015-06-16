;;; init-company-mode --- Summary
;;; Commentary:
;;; Code:
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)

(define-key company-active-map (kbd "\C-n") 'company-select-next)
(define-key company-active-map (kbd "\C-p") 'company-select-previous)
(define-key company-active-map (kbd "\C-d") 'company-show-doc-buffer)
(define-key company-active-map (kbd "<tab>") 'company-complete)

(provide 'init-company-mode)
;;; init-company-mode ends here
