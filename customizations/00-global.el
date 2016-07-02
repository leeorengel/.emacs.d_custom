;;; global --- Summary
;;; Commentary:
;;; Code:

;;; Fancier dired display
(require 'dired-details+)

;; No splash screen
(setq inhibit-startup-message t)

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

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

;; nice jumper
(require 'nice-jumper)
(nice-jumper-mode t)

;; Shut up dired ls error message
(setq dired-use-ls-dired nil)

(ido-vertical-mode)

;; Smart M-x is smart
(require 'smex)
(smex-initialize)

;; Visual regexp
(require 'visual-regexp)

;; Run at full power please
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; Enable full-screen by default on startup
(toggle-frame-maximized)

; Set highlight exceeding character limit to 120 rather than 80
(setq whitespace-line-column 120)

;; Don't beep. Don't visible-bell (fails on el capitan). Just blink the modeline on errors.
(setq visible-bell nil)
(setq ring-bell-function (lambda ()
                           (invert-face 'mode-line)
                           (run-with-timer 0.05 nil 'invert-face 'mode-line)))

;; Highlight current line
(global-hl-line-mode 1)

(require 'bash-completion)
(bash-completion-setup)

;; company for auto-completion
(require 'company)
(global-company-mode)

;; BEGIN MAC STUFF

;; Move to trash when deleting stuff
(setq delete-by-moving-to-trash t
      trash-directory "~/.Trash/emacs")

;; Ignore .DS_Store files with ido mode
(add-to-list 'ido-ignore-files "\\.DS_Store")

;; END MAC STUFF

(provide '00-global)
;;; 00-global.el ends here
