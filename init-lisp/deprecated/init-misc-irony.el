;;; init-misc-irony --- Summary
;;; Commentary:
;;; Code:
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
(provide 'init-misc-irony)
;;; init-misc-irony ends here
