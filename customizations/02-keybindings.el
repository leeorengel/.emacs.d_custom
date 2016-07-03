;; Change meta to command key
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

(global-set-key (kbd "C-x C-c") 'save-buffers-kill-terminal)

;; Smart M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Expand region
(global-set-key (kbd "C-=") 'er/expand-region)

;; multiple-cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Transpose stuff with M-t
(global-unset-key (kbd "M-t")) ;; which used to be transpose-words
(global-set-key (kbd "M-t l") 'transpose-lines)
(global-set-key (kbd "M-t w") 'transpose-words)
(global-set-key (kbd "M-t s") 'transpose-sexps)
(global-set-key (kbd "M-t p") 'transpose-params)

;; Make shell more convenient, and suspend-frame less
(global-set-key (kbd "C-z") 'shell)

;; Zap to char
(global-set-key (kbd "M-z") 'zap-up-to-char)

;; Create new frame
(define-key global-map (kbd "C-x C-n") 'make-frame-command)

;; Jump to a definition in the current file.
(global-set-key (kbd "C-x C-i") 'imenu)

;; File finding
(global-set-key (kbd "C-x f") 'crux-recentf-ido-find-file)
(global-set-key (kbd "C-x C-p") 'find-or-create-file-at-point)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-x 3") 'split-window-right-and-move-there-dammit)

;; move-text
(global-set-key (kbd "<C-S-down>") 'move-text-down)
(global-set-key (kbd "<C-S-up>") 'move-text-up)

;; Navigation bindings
(global-set-key [remap goto-line] 'goto-line-with-feedback)

;; Smart navigation, builds on expand-region
(global-set-key (kbd "M-<up>") 'smart-up)
(global-set-key (kbd "M-<down>") 'smart-down)
(global-set-key (kbd "M-<left>") 'smart-backward)
(global-set-key (kbd "M-<right>") 'smart-forward)

;; Webjump let's you quickly search google, wikipedia, emacs wiki
(global-set-key (kbd "C-x g") 'webjump)
(global-set-key (kbd "C-x M-g") 'browse-url-at-point)   

;; Like isearch, but adds region (if any) to history and deactivates mark
(global-set-key (kbd "C-s") 'isearch-forward-use-region)
(global-set-key (kbd "C-r") 'isearch-backward-use-region)

;; Move more quickly
(global-set-key (kbd "C-S-n") (lambda () (interactive) (ignore-errors (next-line 5))))
(global-set-key (kbd "C-S-p") (lambda () (interactive) (ignore-errors (previous-line 5))))
(global-set-key (kbd "C-S-f") (lambda () (interactive) (ignore-errors (forward-char 5))))
(global-set-key (kbd "C-S-b") (lambda () (interactive) (ignore-errors (backward-char 5))))

;; Move windows, even in org-mode
(global-set-key (kbd "<S-right>") 'windmove-right)
(global-set-key (kbd "<S-left>") 'windmove-left)
(global-set-key (kbd "<S-up>") 'windmove-up)
(global-set-key (kbd "<S-down>") 'windmove-down)

;; Magit
(global-set-key (kbd "C-x m") 'magit-status-fullscreen)
(autoload 'magit-status-fullscreen "magit")

;; Swap windows
(global-set-key (kbd "C-c s") 'crux-swap-windows)
(global-set-key (kbd "C-<backspace>") #'crux-kill-line-backwards)

;; Duplicate region
(global-set-key (kbd "C-c d") 'crux-duplicate-current-line-or-region)

;; Fix indentation in buffer and strip whitespace in the buffer
(global-set-key (kbd "C-c n") 'crux-cleanup-buffer-or-region)

;; Projectile
(global-set-key (kbd "M-o") 'projectile-find-file)
(global-set-key (kbd "M-O") 'projectile-find-file-in-known-projects)
(global-set-key (kbd "M-e") 'projectile-recentf)

;; Auto-complete
(global-set-key (kbd "C-.") 'company-complete)

;; Toggle comment
(global-set-key (kbd "M-;") 'comment-or-uncomment-region-or-line)

;; Searching
(global-set-key (kbd "M-F") 'projectile-ag)

;; Go back/forward
(global-set-key (kbd "M-[") 'nice-jumper/backward)
(global-set-key (kbd "M-]") 'nice-jumper/forward)

;; Additional keybindings
;; Go to line - ala IntelliJ
(global-set-key (kbd "M-l") 'goto-line)

(provide '02-keybindings.el)
