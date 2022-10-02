;;; miacro-utils --- Summary
;;; Commentary:
;;; Code:

(defun ensure-python-user-base-path ()
  (let* ((python-bin (pick-available-python))
         (user-base-cmd (format "%s -c 'import site;print(site.getuserbase(),end=\"\")'" python-bin))
         (user-base-path (shell-command-to-string user-base-cmd))
         (user-base-path-bin (format "%s/bin" user-base-path)))
        (setq exec-path (append exec-path (cons user-base-path-bin nil)))))

(defun pick-available-python ()
  (let ((pick-list '("python4" "python3" "python" "python2"))
        (result nil))
   (while pick-list
     (when (executable-find (car pick-list))
       (setq result (car pick-list))
       (setq pick-list ()))
     (setq pick-list (cdr pick-list)))
   result))

(provide 'miacro-utils)
;;; miacro-utils ends here
