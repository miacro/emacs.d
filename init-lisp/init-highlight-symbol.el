;;; init-highlight-symbol --- Summary
;;; Commentary:
;;; Code:
(el-get-bundle highlight-symbol)
;; (require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)
(provide 'init-highlight-symbol)
;;; init-highlight-symbol ends here
