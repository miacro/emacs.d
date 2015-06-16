;;; init-emacs-ycmd --- Summary
;;; Commentary:
;;; Code:
(require 'ycmd)
(ycmd-setup)
(set-variable 'ycmd-server-command '("python2" "/home/fq/github/emacs/ycmd/ycmd"))
(set-variable 'ycmd-global-config "/home/fq/.ycm_extra_conf.py")
(set-variable 'ycmd-extra-conf-whitelist '("/home/fq/cqthink/ehr_svc_v3/*"))

(require 'company-ycmd)
(company-ycmd-setup)
(require 'flycheck-ycmd)
(flycheck-ycmd-setup)
(provide 'init-emacs-ycmd)
;;; init-emacs-ycmd ends here
