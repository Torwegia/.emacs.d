(setq my-prog-modes
      '(color-identifiers-mode
      rainbow-delimiters
      rainbow-mode
      flycheck
      helm-flycheck
      company
      lsp-mode
      ))
(dolist (my-bullshit my-prog-modes)
  (fetch-package my-bullshit)
  (require my-bullshit))

;; Colors in prog modes
(global-color-identifiers-mode t)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Make it so things get indented
(define-key global-map (kbd "RET") 'newline-and-indent)

;; enable flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Autocomplete
(require 'company)
(require 'lsp-mode)
(add-hook 'prog-mode-hook 'company-mode)
(add-hook 'prog-mode-hook 'lsp)

(provide 'tor-prog)
