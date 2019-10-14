;; INSTALL USE-PACKAGE

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; CUSTOM VARIABLES

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil-magit evil-org org-bullets magit linum-relative better-defaults evil-ledger ledger-mode evil use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; GENERAL EDITOR STUFF

;; hide the startup message
(setq inhibit-startup-message t)

;; set font size
(if (eq system-type 'darwin)
    (set-face-attribute 'default nil :height 140)  ;; 14pt if on Mac OS
    (set-face-attribute 'default nil :height 120)) ;; 12pt if on anything else

;; better defaults
(use-package better-defaults
  :ensure t)

;; evil mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1))

;; evil surround
(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

;; relative line numbering
(global-linum-mode)
(use-package linum-relative
  :ensure t
  :config
  (linum-relative-toggle))

;; color theme
(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-dark t))

;; Uses correct path in emacs (normally broken in OS X)
(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

;; GIT STUFF

;; use magit with M-x magit-status
(use-package magit
  :ensure t
  :config
    (define-key evil-normal-state-map "M" 'magit-status))

;; use evil keybindings in magit
(use-package evil-magit
  :ensure t)

;; ORG MODE

;; nicer unicode bullets
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; evil mode bindings
(use-package evil-org
  :ensure t
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
            (lambda ()
              (evil-org-set-key-theme)))
  (evil-org-set-key-theme '(textobjects insert navigation additional shift todo heading))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

;; LEDGER

(use-package ledger-mode
  :ensure t)
(use-package evil-ledger
  :ensure t)
