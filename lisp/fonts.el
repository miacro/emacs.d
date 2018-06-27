;;; fonts --- Summary
;;; Commentary:
;;; Code:

;; (defun miacro-create-fontset (font-specs &key size)
;;   "Create fontset by FONT-SPECS, &KEY SIZE: font size."
;;   (let* ((font-specs
;;           (loop for font-spec in font-specs
;;             collect (cons (car font-spec)
;;                           (font-xlfd-name (cdr font-spec)))))
;;         (font-specs-string  (cdr (car font-specs))))
;;     (message font-specs-string)
;;     (dolist (font-spec (cdr font-specs))
;;       (setf font-specs-string
;;         (format "%s, %s:%s" font-specs-string (car font-spec) (cdr font-spec))))
;;     (message font-specs-string)
;;     (return (create-fontset-from-fontset-spec font-specs-string t))
;;    )
;;  )
;;
;; (miacro-create-fontset
;;  (list (cons "fontset-miacro" (font-spec :registry "fontset-miacro"))
;;        (cons "iso-8859-1" (font-spec :family "Source Code Pro"
;;              :registry "iso10646-1")))
;;  :size nil)
;;

(create-fontset-from-fontset-spec
 (format "%s, iso-8859-1: %s"
         (font-xlfd-name (font-spec :registry "fontset-miacro" :size 17))
         (font-xlfd-name (font-spec :family "Source Code Pro"
                                    :size 17
                                    :registry "iso10646-1")))
 t)

(set-fontset-font "fontset-miacro"
                  'chinese-gbk
                  (font-spec :family "Source Han Sans CN"
                             :size 17
                             :registry "iso10646-1")
                  nil
                  'append)

(add-to-list 'default-frame-alist
;;             '(font . "Source Code Pro-13:style=Regular"))
             '(font . "fontset-miacro"))

(provide 'fonts)
;;; fonts ends here
