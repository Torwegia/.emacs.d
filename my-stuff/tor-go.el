
(defun go-mode-setup()
  (go-eldoc-setup)
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save))

(add-hook 'go-mode-hook 'go-mode-setup)

(provide 'tor-go)
