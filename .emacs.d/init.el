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
    (linum-relative better-defaults evil-ledger ledger-mode evil use-package))))
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

;; relative line numbering
(global-linum-mode)
(use-package linum-relative
  :ensure t
  :config
  (linum-relative-toggle))

;; LEDGER

(use-package ledger-mode
  :ensure t)
(use-package evil-ledger
  :ensure t)
