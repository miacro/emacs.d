;;(global-display-line-numbers-mode 1)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(setq inhibit-startup-buffer-menu t)
;;(setq inhibit-startup-screen nil)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode t)
(show-paren-mode t)

(display-time-mode 1)
(setq display-time-day-and-date t)

(mouse-avoidance-mode 'animate)
;;(setq mouse-yank-at-point t)
;;(transient-mark-mode t)
(desktop-save-mode 1)

(setq select-enable-clipboard t)
(xterm-mouse-mode)
(setq frame-title-format '("" buffer-file-name "@emacs" ))
;;(setq default-fill-column 80)

(setq tab-width 4)
(setq-default indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-auto-revert-mode t)

(setq search-default-mode t)
;;(setq make-backup-files nil)

(setq custom-file 
  (concat 
    (file-name-directory load-file-name) "emacs-custom.el"))
(setq debug-on-error t)
