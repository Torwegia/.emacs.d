(setq my-prog-modes
      '(color-identifiers-mode
      diminish
      rainbow-delimiters
      rainbow-mode
      flymake
      flycheck
      helm-flymake
      company
      irony
      ))
(dolist (my-bullshit my-prog-modes)
    (package-require my-bullshit))

;; Colors in prog modes
(global-color-identifiers-mode t)
(diminish 'color-identifiers-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Make it so things get indented
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Flycheck stuff
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Autocomplete
(require 'company)
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-hook 'after-init-hook 'global-company-mode)
(eval-after-load 'company
                   '(add-to-list 'company-backends 'company-irony))

(provide 'tor-prog)
