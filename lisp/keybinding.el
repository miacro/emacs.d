;;; keybinding --- Summary
;;; Commentary:
;;; Code:

;; (define-key KEYMAP KEY nil)
;; (global-unset-key KEY)
;; (local-unset-key KEY)
(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "C-m") 'set-mark-command)
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "<insertchar>"))
(global-unset-key (kbd "<insert>"))
(provide 'keybinding)
;;; keybinding ends here
