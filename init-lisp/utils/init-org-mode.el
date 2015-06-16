;;; init-org-mode --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/github/emacs/org-mode" t)
(add-to-list 'load-path "~/github/emacs/org-mode/contrib/lisp" t)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(transient-mark-mode 1)
(setq truncate-lines nil)

(require 'org-mode)
(provide 'init-org-mode)
;;; init-org-mode ends here
