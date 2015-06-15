;;; fq-flycheck-irony --- Summary
;;; Commentary:
;;; Code:
(eval-after-load 'flycheck
   '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
(provide 'fq-flycheck-irony)
;;; fq-flycheck-irony ends here
