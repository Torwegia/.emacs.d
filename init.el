;; Disable mouse related things
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash
(setq inhibit-startup-message t)

;; Move custom junk
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; Set dependencies
(setq my-stuff-dir
     (expand-file-name "my-stuff" user-emacs-directory))
(add-to-list 'load-path my-stuff-dir)

;; Write backup files to own directory
(setq backup-directory-alist
    `(("." . ,(expand-file-name
    (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; Automatically save buffers before compiling
(setq compilation-ask-about-save nil)

;; Always ask for y/n keypress instead of typing out 'yes' or 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; Needed for loop and such
(require 'cl)

;; ELPA
(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))
(require 'package)
(dolist (source '(("melpa" . "http://melpa.org/packages/")
                  ("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")))
  (add-to-list 'package-archives source t))
(package-initialize)

(defun package-require (pkg)
  "Install a package only if it's not already installed."
  (when (not package-archive-contents)
    (package-refresh-contents))
  (when (not (package-installed-p pkg))
    (package-install pkg)))

;; Make sure my exec-path kinda works?
(package-require 'exec-path-from-shell)
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Setup the look
(require 'looks)

;; Load the things
(setq my-packages
      '(tor-evil
        tor-project
	tor-prog
        tor-c
	tor-go
	tor-rust
	tor-python
	tor-clojure
	))


(dolist (my-pkg my-packages)
    (require my-pkg))
