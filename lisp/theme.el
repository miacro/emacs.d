;;; theme --- Summary
;;; Commentary:
;;; Code:
(if (display-graphic-p)
  (progn
    (require 'color-theme)
    (require 'color-theme-solarized)
    (color-theme-solarized-dark)))
(provide 'theme)
;;; theme ends here
