;; INSTALL USE-PACKAGE

;; need the package package in order to install the better use-package
(require 'package)

;; can't remember why this line is in here, no obvious effect
;; (setq package-enable-at-startup nil)

;; add package archives ** I MADE HTTP -> HTTPS, MAY BREAK STUFF **
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
    (virtualenvwrapper evil-magit evil-org org-bullets magit linum-relative better-defaults evil-ledger ledger-mode evil use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; GENERAL EDITOR STUFF

;; hide the startup message
;; (setq inhibit-startup-message t) will re-enable when I figure out how to unset C-j for interactive lisp

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
  :after evil
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

;; vim-like movement between frames
(global-set-key (kbd "C-h") 'windmove-left)
(global-set-key (kbd "C-l") 'windmove-right)
(global-set-key (kbd "C-k") 'windmove-up)
(global-set-key (kbd "C-j") 'windmove-down)
;; need to unset C-j for InteractiveLisp buffers

;; GIT STUFF

;; use magit with M-x magit-status
(use-package magit
  :ensure t
  :config
  (define-key evil-normal-state-map "M" 'magit-status))

;; use evil keybindings in magit
(use-package evil-magit
  :ensure t
  :after magit)

;; ORG MODE

;; enable visual-line-mode by default in org mode
(with-eval-after-load 'org       
  (add-hook 'org-mode-hook #'visual-line-mode))

;; nicer unicode bullets
(use-package org-bullets
  :ensure t
  :after org
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

;; PYTHON

;; define function which will send whole buffer to shell
(defun python-shell-send-whole-buffer ()
  (interactive)
  (let ((current-prefix-arg 4)) ;; emulate C-u
    (call-interactively 'python-shell-send-buffer))) ;; emulate C-c C-c

;; C-c r to run python script
(use-package python
  :config
  (define-key python-mode-map (kbd "C-c r") 'python-shell-send-whole-buffer)
  (setq python-shell-interpreter "python3"))

(use-package virtualenvwrapper
  :ensure t
  :config
  (venv-initialize-interactive-shells)
  (venv-initialize-eshell))
