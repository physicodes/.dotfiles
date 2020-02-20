;; UI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-visual-line-mode 1)
(ido-mode t)
(setq ido-enable-flex-matching t)
;; CONTROLS
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))
(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR." t)
(setq mouse-yank-at-point t)
;; CUSTOM FILE
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
;; ORG MODE
(define-key global-map "\C-ca" 'org-agenda)
(setq org-todo-keywords '((sequence "TODO(t)" "STARTED(s!)" "WAITING(w@/!)" "|" "DONE(d!)" "CANCELLED(c@)")))
(setq org-todo-keyword-faces
      '(
	("STARTED" . "orange")
	("WAITING" . "purple")
	("CANCELLED" . "brown")))
(setq org-enforce-todo-dependencies t)
(setq org-log-into-drawer t)
(setq org-clock-into-drawer t)
