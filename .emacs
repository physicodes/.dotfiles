;;  Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    evil
    material-theme
    linum-relative
    magit
    elpy
    flycheck
    py-autopep8))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMISATION
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(require 'better-defaults) ;; enable better defaults
(require 'evil) ;; enable evil mode
(evil-mode 1)

(load-theme 'material t) ;; load material theme
(require 'linum-relative) ;; relative line numbering
(set-face-attribute 'default t :font "Space Mono" )
(if (eq system-type 'darwin)
    (set-face-attribute 'default nil :height 140)  ;; 14pt if on Mac OS
    (set-face-attribute 'default nil :height 120)) ;; 12pt if on anything else
(global-linum-mode t) ;; enable line numbers globally

;; save user customisations in different file b.c. they ugly
(setq-default custom-file (expand-file-name ".custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; GIT INTEGRATION
;; --------------------------------------

(require 'magit)

;; PYTHON CONFIGURATION
;; --------------------------------------

;; enable Elpy
(elpy-enable)

;; ipython
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

;; realtime syntax highlighting
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; automatically format in PEP-8 on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
