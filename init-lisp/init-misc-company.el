;;; init-misc-company --- Summary
;;; Commentary:
;;; Code:
(el-get-bundle company-mode)
(use-package company-mode
  ;; :hook
  ;; (after-init-hook . global-company-mode)
  :defer t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 2))

(el-get-bundle company-c-headers)
(use-package company-c-headers
  :requires company-mode
  :config
  (add-to-list 'company-backends 'company-c-headers))

(provide 'init-misc-company)
;;; init-misc-company ends here
