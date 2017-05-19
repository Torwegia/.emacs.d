(package-require 'clojure-mode)
(package-require 'clojurescript-mode)
(require 'clojure-mode)
(require 'clojurescript-mode)

;; Cider and repl junk
(package-require 'cider)
(require 'cider)

(evil-leader/set-key
  "r" 'cider-switch-to-repl-buffer
  "sn" 'cider-repl-set-ns)

(provide 'tor-clojure)
