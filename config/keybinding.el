;; (define-key KEYMAP KEY nil)
;; (global-unset-key KEY)
;; (local-unset-key KEY)
;; (global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "C-m") 'set-mark-command)
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "<insertchar>"))
(global-unset-key (kbd "<insert>"))
;; conflict with stumpwm
(global-unset-key (kbd "C-t"))
(global-unset-key (kbd "C-x C-t"))

;; (normal-erase-is-backspace-mode 0)
