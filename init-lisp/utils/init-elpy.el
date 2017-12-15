;;; init-elpy --- Summary
;;; Commentary:
;;; Code:

(add-hook 'python-mode-hook
          #'(lambda ()
              (progn
                (elpy-enable)
                (elpy-use-ipython))))
(provide 'init-elpy)
;;; init-elpy ends here
