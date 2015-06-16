;;; init-flycheck-irony --- Summary
;;; Commentary:
;;; Code:
(eval-after-load 'flycheck
   '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
(provide 'init-flycheck-irony)
;;; init-flycheck-irony ends here
