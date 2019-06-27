;;; INIT-MISC-REALGUD --- summary
;;; Commentary:
;;; Code:
(el-get-bundle realgud)
(el-get-bundle realgud-ipdb
               :description "Emacs Lisp Module to add ipdb support to realgud."
               :type github
               :pkgname "realgud/realgud-ipdb")

(el-get-bundle realgud-node-inspect
               :description "Module to add node inspect's V8-inspector-protocol debugger support to emacs realgud."
               :type github
               :pkgname "realgud/realgud-node-inspect")
(provide 'init-misc-realgud)
;;; init-misc-realgud ends here
