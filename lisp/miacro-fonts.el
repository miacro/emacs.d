;;; miacro-fonts --- Summary
;;; Commentary:
;;; Code:
(defun miacro-create-fontset (charset-font-specs &optional &key size)
  "Create fontset by CHARSET-FONT-SPECS.
CHARSET-FONT-SPECS: alist ('charset' . 'font-spec attributes')
SIZE: font size."
  (dolist (charset-font-spec charset-font-specs)
    (let ((font-spec (apply #'font-spec (cdr charset-font-spec))))
      (unless (font-get font-spec :size)
        (font-put font-spec :size size))
      (setf (cdr charset-font-spec) (font-xlfd-name font-spec))))

  (let* ((font-specs-string  (cdr (car charset-font-specs))))
    (dolist (charset-font-spec (cdr charset-font-specs))
      (setf font-specs-string
        (format "%s, %s:%s"
                font-specs-string
                (car charset-font-spec)
                (cdr charset-font-spec))))

    (create-fontset-from-fontset-spec font-specs-string t)))


(miacro-create-fontset
 '(("fontset-miacro" . (:registry "fontset-miacro"))
   ("iso-8859-1" . (:family "Source Code Pro" :registry "iso10646-1"))
   ("chinese-gbk" . (:family "Note Sans CJK SC" :registry "iso10646-1")))
 :size 17)

;;;; modify the fontset
;; (set-fontset-font "fontset-miacro"
;;                   'chinese-gbk
;;                   (font-spec :family "Source Han Sans CN"
;;                              :size 17
;;                              :registry "iso10646-1")
;;                   nil
;;                   'append)

(add-to-list 'default-frame-alist
;;             '(font . "Source Code Pro-13:style=Regular"))
             '(font . "fontset-miacro"))

(provide 'miacro-fonts)
;;; miacro-fonts ends here
