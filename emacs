;;    
;; Some simple stuff
;;
;; Set font and make Emacs window half-screen big on my laptop.
(setq default-frame-alist '((width . 94) (height . 48) 
                            (font . "Dejavu Sans Mono-9")))
(setq standard-indent 4)
(setq-default indent-tabs-mode nil) 
(setq make-backup-files nil) 
(line-number-mode 1)
(column-number-mode 1)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(global-linum-mode 1)
(setq inhibit-startup-message t)
(add-to-list 'backup-directory-alist
             (cons ".*" "~/.emacs.d/backup"))

;;
;; Color theme setup 
;;
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(color-theme-deep-blue)

;;
;; CC mode
;;
(setq c-basic-offset 8)
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "k&r")))


;;
;; Haskell mode
;;
(load "~/emacs/haskell-mode/haskell-site-file") 
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(if window-system 
    ;; Setting font-lock in graphical mode only
    ;; to avoid problems when working via ssh.
    (setq haskell-font-lock-symbols t)
)

;;
;; Org-mode
;;
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\M-sl" 'org-store-link)
(define-key global-map "\M-sa" 'org-agenda)
(setq org-log-done t)
;; TODO: Make org-mode load all *.org files from ~/org/.
(setq org-agenda-files (list "~/org/code.org"))
(setq org-todo-keywords
       '((sequence "TODO" "META" "PROG" "|" "DONE")))

;;
;; Cedet
;;
(load-file "~/emacs/cedet/common/cedet.el")
(global-ede-mode t)
(semantic-load-enable-gaudy-code-helpers)
(require 'semantic-ia)
(require 'semantic-gcc)
(setq semantic-idle-scheduler-mode 1)
(setq semantic-idle-scheduler-idle-time 5)
(global-semantic-tag-folding-mode)

(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)

;; Keybindings
(defun my-cedet-hook ()
  (local-set-key [(control enter)] 'semantic-ia-complete-symbol)
  (local-set-key "\C-c/" 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
  (local-set-key "\C-cj" 'semantic-ia-fast-jump)
  (local-set-key "\C-cb" 'semantic-mrub-switch-tag)
  (local-set-key "\C-cJ" 'semantic-decoration-include-visit)
  )
(add-hook 'c-mode-common-hook 'my-cedet-hook)
(add-hook 'python-mode-common-hook 'my-cedet-hook)


