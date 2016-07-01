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

;; Use M-w for copy-line if no active region
(global-set-key (kbd "M-w") 'save-region-or-current-line)

;; Make shell more convenient, and suspend-frame less
(global-set-key (kbd "C-z") 'shell)

;; Zap to char
(global-set-key (kbd "M-z") 'zap-up-to-char)

;; Create new frame
(define-key global-map (kbd "C-x C-n") 'make-frame-command)

;; Jump to a definition in the current file. (This is awesome)
(global-set-key (kbd "C-x C-i") 'ido-imenu)

;; File finding
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-x C-p") 'find-or-create-file-at-point)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-x 3") 'split-window-right-and-move-there-dammit)

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

(provide '02-keybindings.el)