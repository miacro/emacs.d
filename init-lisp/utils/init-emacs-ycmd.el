;;; init-emacs-ycmd --- Summary
;;; Commentary:
;;; Code:
(require 'ycmd)
(ycmd-setup)
(set-variable 'ycmd-server-command (cons "python3" (cons (expand-file-name "~/github/emacs/ycmd/ycmd") nil)))
(set-variable 'ycmd-global-config "~/.ycm_extra_conf.py")
(set-variable 'ycmd-extra-conf-whitelist '("~/cqthink/ehr_svc_v3/*"))

(require 'company-ycmd)
(company-ycmd-setup)
(require 'flycheck-ycmd)
(flycheck-ycmd-setup)
(provide 'init-emacs-ycmd)
;;; init-emacs-ycmd ends here
