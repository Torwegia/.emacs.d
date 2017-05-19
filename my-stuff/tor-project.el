(package-require 'helm)
(package-require 'helm-projectile)
(package-require 'projectile)

(require 'projectile)
(require 'helm-config)
(require 'helm-files)
(require 'helm-projectile)

(diminish 'projectile-mode " P")
(projectile-mode 1)

(setq projectile-completion-system 'helm)
(helm-projectile-on)
(setq projectile-switch-project-action 'helm-projectile-find-file)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(diminish 'helm-mode " H")
(helm-mode 1)

(provide 'tor-project)
