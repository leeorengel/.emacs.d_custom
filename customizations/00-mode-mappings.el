;; Emacs lisp
(add-to-list 'auto-mode-alist '("Cask$" . emacs-lisp-mode))

;; Snippets
(add-to-list 'auto-mode-alist '("yasnippet/snippets" . snippet-mode))
(add-to-list 'auto-mode-alist '("\\.yasnippet$" . snippet-mode))

;; org-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(provide '00-mode-mappings)

