;; INSTALL USE-PACKAGE

;; need the package package in order to install the better use-package
(require 'package)
(setq package-enable-at-startup nil) ;; faster startup

;; add package archives
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; initialise package package
(package-initialize)

;; automagically install use-package if not already installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; use the use-package package
(eval-when-compile
  (require 'use-package))

;; CUSTOM VARIABLES

;; who knows what this is really for, anyway emacs requires it so here it is
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; GENERAL EDITOR STUFF

;; better defaults
(use-package better-defaults
  :ensure t)

;; evil mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1))

;; turn on line numbering
(global-linum-mode)

;; color theme
(use-package material-theme
:ensure t)

;; Uses correct path in emacs (normally broken in OS X)
(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

;; movement between frames
(global-set-key (kbd "C-h") 'windmove-left)
(global-set-key (kbd "C-l") 'windmove-right)
(global-set-key (kbd "C-k") 'windmove-up)
(global-set-key (kbd "C-j") 'windmove-down)

;; GIT STUFF

;; use magit with M-x magit-status
(use-package magit
  :ensure t)

;; ORG MODE

;; some org mode settings
(with-eval-after-load 'org
  ;; default to visual line mode
  (add-hook 'org-mode-hook #'visual-line-mode)
  ;; fix cycling in terminal
  (add-hook 'org-mode-hook (lambda () (define-key evil-normal-state-map (kbd "TAB") 'org-cycle))))

;; nicer unicode bullets
(use-package org-bullets
  :ensure t
  :after org
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(use-package evil-org
  :ensure t
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
            (lambda ()
              (evil-org-set-key-theme)))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))
