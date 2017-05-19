;; Don't beep. Don't visible-bell (fails on el capitan). Just blink the modeline on errors.
(setq visible-bell nil)
(setq ring-bell-function (lambda ()
                           (invert-face 'mode-line)
                           (run-with-timer 0.05 nil 'invert-face 'mode-line)))

;; Don't defer screen updates when performing operations
(setq redisplay-dont-pause t)

(package-require 'monokai-theme)
(load-theme 'monokai t)

(provide 'looks)
