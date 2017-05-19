(package-require 'evil)
(package-require 'evil-leader)
(package-require 'evil-surround)
(require 'evil)
(require 'evil-leader)
(require 'evil-surround)

(package-require 'undo-tree)
(require 'undo-tree)

(setq evil-emacs-state-cursor '(box "red"))
(setq evil-normal-state-cursor '(box "green"))
(setq evil-visual-state-cursor '(box "orange"))
(setq evil-insert-state-cursor '(bar "red"))
(setq evil-replace-state-cursor '(bar "red"))
(setq evil-operator-state-cursor '(hollow "red"))
(evil-mode 1)
(global-evil-leader-mode)

(setq evil-leader/leader "<SPC>"
      evil-leader/in-all-states t)

(evil-leader/set-key
  "ff" 'helm-find-files
  "cr" 'comment-or-uncomment-region)

;; Mode overrides
(loop for (mode . state) in '((cider-stacktrace-mode . emacs)
			      (cider-repl-mode . emacs))
      do (evil-set-initial-state mode state))

(provide 'tor-evil)
