;;; init-auto-complete-clang --- Summary
;;; Commentary:
;;; Code:
(require 'auto-complete-clang)

;;(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
;; (ac-set-trigger-key "TAB")
;; (define-key ac-mode-map  [(control tab)] 'auto-complete)
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags

;; run " echo "" | g++ -v -x c++ -E - " to get include path

(setq ac-clang-flags
      (mapcar (lambda (item)(concat "-I" item))
              (split-string
                "
                /home/aq/ace/ACE_wrappers
                /home/aq/cqthink/ehr_svc_v3/src
                /usr/lib/gcc/i686-pc-linux-gnu/4.8.3/include/g++-v4
                /usr/lib/gcc/i686-pc-linux-gnu/4.8.3/include/g++-v4/i686-pc-linux-gnu
                /usr/lib/gcc/i686-pc-linux-gnu/4.8.3/include/g++-v4/backward
                /usr/lib/gcc/i686-pc-linux-gnu/4.8.3/include
                /usr/lib/gcc/i686-pc-linux-gnu/4.8.3/include-fixed
                /usr/include

                /home/think/ace/ACE_wrappers
                /home/think/cqthink/ehr_svc_v3/src
                /usr/lib/gcc/x86_64-pc-linux-gnu/4.8.4/include/g++-v4
                /usr/lib/gcc/x86_64-pc-linux-gnu/4.8.4/include/g++-v4/x86_64-pc-linux-gnu
                /usr/lib/gcc/x86_64-pc-linux-gnu/4.8.4/include/g++-v4/backward
                /usr/lib/gcc/x86_64-pc-linux-gnu/4.8.4/include
                /usr/lib/gcc/x86_64-pc-linux-gnu/4.8.4/include-fixed
                "
                )))

(my-ac-config)
(provide 'init-auto-complete-clang)
;;; init-auto-complete-clang ends here
