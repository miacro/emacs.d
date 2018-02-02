;;; init-elpy --- Summary
;;; Commentary:
;;; Code:

(add-hook 'python-mode-hook
          #'(lambda ()
              (progn
                (elpy-enable)
                (elpy-use-ipython))))
(setf elpy-rpc-timeout 15)
(provide 'init-elpy)
;;; init-elpy ends here
