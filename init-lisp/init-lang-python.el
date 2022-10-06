;;; init-lang-python --- Summary
;;; Commentary:
;;; Code:
(when (pick-available-python)
  (progn
    (ensure-python-user-base-path)
    (miacro-python-install-package '("pylsp" . "python-lsp-server"))
    (miacro-python-install-package "black")
    (miacro-python-install-package '("flake8" . "jedi flake8"))
    (miacro-python-install-package "yapf")
    (miacro-python-install-package "autopep8")))
(provide 'init-lang-python)
;;; init-lang-python ends here
