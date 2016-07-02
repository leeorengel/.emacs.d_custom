(require 'clojure-mode)
(require 'clojure-mode-extra-font-locking)
(require 'clj-refactor)
(require 'cider)
(require 'flycheck)
(require 'flycheck-clojure)
(require 'hl-sexp)
(require 'company)

;; CLOJURE MODE HOOKS

;; Setup clj-refactor with prefix keybinding
(add-hook 'clojure-mode-hook
          (lambda ()
            (clj-refactor-mode 1)
            (cljr-add-keybindings-with-prefix "C-c RET")))

;; Enable yassnippet in clojure mode
(add-hook 'clojure-mode-hook #'yas-minor-mode)

;; Flycheck clojure
(eval-after-load 'flycheck '(flycheck-clojure-setup))
(add-hook 'after-init-hook #'global-flycheck-mode)
(eval-after-load 'flycheck
  '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))

;; aggressive indent mode
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)

;; Enable highlighting of current sexp
(add-hook 'clojure-mode-hook #'hl-sexp-mode)

(add-hook 'clojure-mode-hook #'smartparens-strict-mode)

(add-hook 'clojure-mode-hook #'subword-mode)

(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

;; END CLOJURE MODE HOOKS

;; CIDER MODE HOOKS

;; flycheck
(add-hook 'cider-mode-hook 'my-cider-mode-enable-flycheck)

;; company mode for completion
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

;; Eldoc
(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'eldoc-mode)

(add-hook 'cider-repl-mode-hook #'subword-mode)

;; smart-parens
(add-hook 'cider-repl-mode-hook #'smartparens-strict-mode)

;; rainbow-delimiters
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)

(require 'cider-eval-sexp-fu)

;; END CIDER MODE HOOKS

;; More Cider stuff

;; nice pretty printing
(setq cider-repl-use-pretty-printing t)

;; nicer font lock in REPL
(setq cider-repl-use-clojure-font-lock t)

;; result prefix for the REPL
(setq cider-repl-result-prefix ";; => ")

;; never ending REPL history
(setq cider-repl-wrap-history t)

;; More syntax highlighting for symbols
(setq cider-font-lock-dynamically '(macro core function var))
(setq cider-overlays-use-font-lock t)

;; long history
(setq cider-repl-history-size 3000)

;; REPL history file
(setq cider-repl-history-file "~/.emacs.d/cider-history")

;; Get nice pretty printed and coloured output for clojure data at the REPL
(setq cider-pprint-fn 'fipp)

;; Don't warn me about the dangers of clj-refactor, fire the missiles!
(setq cljr-warn-on-eval nil)

;; Hide nrepl buffers when switching buffers (switch to by prefixing with space)
(setq nrepl-hide-special-buffers t)

;; Enable error buffer popping also in the REPL:
(setq cider-repl-popup-stacktraces t)

;; auto-select the error buffer when it's displayed
(setq cider-auto-select-error-buffer t)

;; Prevent the auto-display of the REPL buffer in a separate window after connection is established
;;(setq cider-repl-pop-to-buffer-on-connect nil)

;; Don't prompt for symbols
(setq cider-prompt-for-symbol nil)

(provide '10-clojure)