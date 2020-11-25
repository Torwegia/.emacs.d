(add-hook 'c++-mode-hook
	  (lambda ()
	    (setq flycheck-clang-language-standard "c++1y")))

(provide 'tor-c)
