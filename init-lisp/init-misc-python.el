;;; init-misc-python --- Summary
;;; Commentary:
;;; Code:
(el-get-bundle elpy)
;; (when (not (string= (el-get-read-package-status "elpy") "installed"))
;;   (message
;;     (shell-command-to-string
;;       "pip install --user jedi flake8 importmagic autopep8 yapf")))

(use-package elpy
  :ensure-system-package
  ((flake8 . "pip install --user jedi flake8")
   (autopep8 . "pip install --user autopep8")
   (yapf . "pip install --user yapf"))
  ;; :hook
  ;; (python-mode-hook . elpy-mode-enable-test)
  :init
  (add-hook 'python-mode-hook
            #'(lambda ()
                (progn (elpy-enable)
                       (elpy-mode))))
  :config
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
          python-shell-interpreter-args "-i"))))
;;(el-get-bundle ein)
(provide 'init-misc-python)
;;; init-misc-python ends here
