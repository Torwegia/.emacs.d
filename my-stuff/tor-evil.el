(fetch-package 'evil)
(fetch-package 'evil-leader)
(fetch-package 'evil-surround)
(require 'evil)
(require 'evil-leader)
(require 'evil-surround)

(fetch-package 'undo-tree)
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
  "ff" 'helm-find-files)

(provide 'tor-evil)
