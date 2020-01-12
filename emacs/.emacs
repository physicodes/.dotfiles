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
 '(package-selected-packages (quote (evil-magit use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; GENERAL EDITOR STUFF

;; set font
(set-face-attribute 'default nil :font "Monofur-16" )

;; better defaults
(use-package better-defaults
  :ensure t)

;;scroll window up/down by one line
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))

;; turn on line numbering
;(global-display-line-numbers-mode)
;(setq display-line-numbers-type 'relative)

;; GIT STUFF

;; use magit with C-x g or M-x magit-status
(use-package magit
  :ensure t)

;; ORG MODE

;; some org mode settings
(with-eval-after-load 'org
  ;; default to visual line mode
  (add-hook 'org-mode-hook #'visual-line-mode)
  ;; fix cycling in terminal
  (add-hook 'org-mode-hook (lambda () (define-key evil-normal-state-map (kbd "TAB") 'org-cycle))))

;; nicer unicode bullets (rubbish with monofur)
;(use-package org-bullets
;  :ensure t
;  :after org
;  :config
;  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
