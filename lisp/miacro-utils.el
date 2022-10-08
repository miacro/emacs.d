;;; miacro-utils --- Summary
;;; Commentary:
;;; Code:

(defun ensure-python-user-base-path ()
  (let*
      ((python-bin (pick-available-python))
       (python-code
        '("import site"
          "paths=sorted(set(site.PREFIXES)|{site.USER_BASE})"
          "paths=[\"{}/bin\".format(_) for _ in paths]"
          "print(\":\".join(paths),end=\"\")"))
       (python-code-str (mapconcat 'identity python-code ";"))
       (user-base-cmd (format "%s -c '%s'" python-bin python-code-str))
       (user-base-bin (shell-command-to-string user-base-cmd))
       (user-base-paths (split-string user-base-bin ":")))
    (setq exec-path (append exec-path user-base-paths))))

(defun pick-available-python ()
  (let ((pick-list '("python4" "python3" "python" "python2"))
        (result nil))
   (while pick-list
     (when (executable-find (car pick-list))
       (setq result (car pick-list))
       (setq pick-list ()))
     (setq pick-list (cdr pick-list)))
   result))

(defun miacro-python-install-package (package &optional &key sys-path-p)
  (let*
      ((package-cmd (if (stringp package) package (car package)))
       (package-name (if (stringp package) package (cdr package)))
       (python-bin (pick-available-python))
       (user-arg (if sys-path-p "" "--user"))
       (install-bin (format "%s -m pip install %s %s" python-bin user-arg package-name))
       output)
    (unless (executable-find package-cmd)
      (message "Installing python package: %s" install-bin)
      (setq output (shell-command-to-string install-bin))
      (message "%s\n" output))))

(cl-defun miacro-eval-from-url (url &optional &key (last-exp-p t))
  (if (executable-find "curl")
      (let*
          ((string (shell-command-to-string (format "curl -fsSL %s" url))))
        (with-temp-buffer
          (insert string)
          (miacro-eval-current-buffer :last-exp-p last-exp-p)))
    (with-current-buffer
        (url-retrieve-synchronously url)
      (miacro-eval-current-buffer :last-exp-p last-exp-p))))

(cl-defun miacro-eval-current-buffer (&optional &key (last-exp-p t))
  (if last-exp-p
      (progn
        (goto-char (point-max))
        (eval-print-last-sexp))
    (progn
      (eval-buffer))))

(provide 'miacro-utils)
;;; miacro-utils ends here
