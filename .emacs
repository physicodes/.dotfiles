;; EMACS CONFIGURATION
;; --------------------------------------
;; --------------------------------------

;; INSTALL PACKAGES
;; --------------------------------------

;; the package package must be installed (but it is by default)
(require 'package)

;; add the MELPA package repository
(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

;; use the package package
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

;; packages to install
(defvar myPackages
  '(better-defaults
    evil
    material-theme
    linum-relative
    magit
    evil-magit
    exec-path-from-shell
    elpy
    flycheck
    py-autopep8))

;; install packages if not already installed
(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMISATION
;; --------------------------------------

;; hide the startup message
(setq inhibit-startup-message t)

;; enable better defaults
(require 'better-defaults)

;; enable evil mode
(require 'evil)
(evil-mode 1)

;; load material theme
(load-theme 'material t)

;; relative line numbering
(global-linum-mode)
(require 'linum-relative)
(linum-relative-toggle)

;; set font and font size
(set-face-attribute 'default t :font "Space Mono" )
(if (eq system-type 'darwin)
    (set-face-attribute 'default nil :height 140)  ;; 14pt if on Mac OS
    (set-face-attribute 'default nil :height 120)) ;; 12pt if on anything else

;; save user customisations in different file b.c. they clutter init file.
(setq-default custom-file (expand-file-name ".custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; SHELL SETUP
;; --------------------------------------

;; Uses correct path in emacs (normally broken in OS X)
(exec-path-from-shell-initialize)

;; GIT INTEGRATION
;; --------------------------------------

;; use magit with M-x magit-status
(require 'magit)

;; use evil keybindings in magit
(require 'evil-magit)

;; PYTHON CONFIGURATION
;; --------------------------------------

;; enable Elpy
(elpy-enable)

;; use ipython interpreter
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

;; realtime syntax highlighting
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; automatically format in PEP-8 with C-c C-r f
(require 'py-autopep8)
