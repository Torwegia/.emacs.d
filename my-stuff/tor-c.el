(add-hook 'c++-mode-hook
	  (lambda ()
	    (setq flycheck-clang-language-standard "c++1y")))
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(provide 'tor-c)
