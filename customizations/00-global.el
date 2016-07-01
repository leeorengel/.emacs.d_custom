;;; global --- Summary
;;; Commentary:
;;; Code:

;;; Fancier dired display
(require 'dired-details+)

;; No splash screen
(setq inhibit-startup-message t)

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; Save cursor positions between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/saved-places")

;; Make path variables work properly
(exec-path-from-shell-initialize)

;; which-key - a better guide-key
(require 'which-key)
(which-key-mode)

;; fullframe
(require 'fullframe)
(fullframe magit-status magit-mode-quit-window)

;; Enable ggtags for all programming modes
;;(add-hook 'prog-mode-hook 'ggtags-mode)

;; beacon
(beacon-mode 1)

;; Shut up dired ls error message
(setq dired-use-ls-dired nil)

(ido-vertical-mode)

;; Smart M-x is smart
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

(provide '00-global)
;;; 00-global.el ends here
