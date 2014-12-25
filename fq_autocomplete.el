(require 'auto-complete-clang)
(setq clang-completion-suppress-error 't)

;; auto-complete config stuff
(setq ac-auto-start nil)
(setq ac-expand-on-auto-complete nil)
(setq ac-quick-help-delay 0.5)
(define-key ac-mode-map [C-tab] 'auto-complete)

;; auto-complete-clang config stuff
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)

(provide 'fq_autocomplete)
