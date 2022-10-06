;;; init-lsp-mode --- Summary
;;; Commentary:
;;; Code:
(el-get-bundle lsp-mode)
(use-package lsp-mode
  :init
  (progn
    (setq lsp-keymap-prefix "C-c l"))
  :hook
  ((c++-mode . lsp)
   (python-mode . lsp)
   (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(straight-use-package 'helm-lsp)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)

(el-get-bundle which-key)
(use-package which-key
  :config
  (which-key-mode))
(provide 'init-lsp-mode)
;;; init-lsp-mode ends here
