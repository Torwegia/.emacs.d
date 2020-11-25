;; To Install:
;;  $ rustup component add rust-src
;;  $ cargo install racer
;;  $ cargo install clippy
;;

(fetch-package 'rust-mode)
(fetch-package 'racer)
(fetch-package 'flycheck-rust)
(require 'rust-mode)
(require 'racer)
(require 'flycheck-rust)

;; Format Rust code on save
(setq rust-format-on-save t)

;; Racer/autocompletion stuff
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'racer-mode-hook #'company-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

;; Checking
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

(provide 'tor-rust)
