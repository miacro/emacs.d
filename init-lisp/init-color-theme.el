;;; init-color-theme --- Summary
;;; Commentary:
;;; Code:

(when (display-graphic-p)
  (el-get-bundle color-theme)
  (el-get-bundle color-theme-solarized)
  (use-package color-theme-solarized
    :requires color-theme
    :init
    (load-theme 'solarized t)
    (add-hook
     'after-make-frame-functions
     (lambda (frame)
       (let ((mode 'dark))
         (set-frame-parameter frame 'background-mode mode)
         (set-terminal-parameter frame 'background-mode mode))
       (enable-theme 'solarized)))
    (set-frame-parameter nil 'background-mode 'dark)
    (set-terminal-parameter nil 'background-mode 'dark)
    (enable-theme 'solarized)))

(provide 'init-color-theme)
;;; init-color-theme ends here
