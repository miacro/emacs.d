;;; fonts --- Summary
;;; Commentary:
;;; Code:
(add-to-list 'default-frame-alist
 '(font . "Source Code Pro-13:style=Regular"))

;; Setting English Font
;;(set-face-attribute
;;  'default nil :font "Source Code Pro 13")

;; Chinese Font
;;(dolist (charset '(kana han symbol cjk-misc bopomofo))
;;  (set-fontset-font (frame-parameter nil 'font)
;;                    charset
;;                    (font-spec :family "Microsoft YaHei" :size 12)))
(provide 'fonts)
;;; fonts ends here
