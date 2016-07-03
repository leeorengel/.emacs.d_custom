(require 'smartparens)

(require 'smartparens-config)

(add-hook 'lisp-mode-hook #'smartparens-strict-mode)
(add-hook 'emacs-lisp-mode-hook #'smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook #'smartparens-strict-mode)

(sp-use-smartparens-bindings)

(setq sp-autoskip-closing-pair 'always)
(setq sp-hybrid-kill-entire-symbol nil)

(provide '10-smartparens)
