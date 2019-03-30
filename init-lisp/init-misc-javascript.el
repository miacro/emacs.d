;;; init-misc-javascript --- Summary
;;; Commentary:
;;; Code:
(el-get-bundle skewer-mode)
(use-package skewer-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  :hook
  ((js2-mode-hook . skewer-mode)
   (css-mode-hook . skewer-css-mode)
   (html-mode-hook . skewer-html-mode)))
(el-get-bundle rjsx-mode)

(el-get-bundle ac-js2)
(use-package ac-js2
 :hook
 (js2-mode-hook . ac-js2-mode)
 :config
 (add-to-list 'company-backends 'ac-js2-company)
 (add-to-list 'js2-mode-hook 'ac-js2-company))
(provide 'init-misc-javascript)
;;; init-misc-javascript ends here
