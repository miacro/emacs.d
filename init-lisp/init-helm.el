;;; init-helm --- Summary
;;; Commentary:
;;; Code:
(require 'helm-config) ; Not needed if you use package.el
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(helm-mode 1)
(provide 'init-helm)
;;; init-helm ends here
