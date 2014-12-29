(global-linum-mode t)
(setq inhibit-startup-buffer-menu t)
;;(setq inhibit-startup-screen nil)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  )
;;(setq make-backup-files nil)
(column-number-mode t)
(show-paren-mode t)

(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

(mouse-avoidance-mode 'animate)
;;(setq mouse-yank-at-point t)
;;(transient-mark-mode t)

(setq x-select-enable-clipboard t)
(setq frame-title-format '("" buffer-file-name "@emacs" ))
;;(setq default-fill-column 80) 

(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(provide 'fq_config)
