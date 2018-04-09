;;; init-elpy --- Summary
;;; Commentary:
;;; Code:

(add-hook
 'python-mode-hook
 #'(lambda ()
     (progn
       (elpy-enable)
       (elpy-mode)
       (setf elpy-rpc-timeout 15)
       (cond
        ((executable-find "jupyter")
         (setq python-shell-interpreter "jupyter"
               python-shell-interpreter-args
               "console --simple-prompt"))
        ((executable-find "ipython")
         (setq python-shell-interpreter "ipython"
               python-shell-interpreter-args
               "-i --simple-prompt"))
        ((executable-find "python")
         (setq python-shell-interpreter "python"
               python-shell-interpreter-args "-i"))))))
(provide 'init-elpy)
;;; init-elpy ends here
