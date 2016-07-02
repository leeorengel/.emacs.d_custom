;;; Custom --- Summary
;;; Commentary:
;;; Code:

(setq custom-file "~/.emacs.d/customizations/99-customize.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-auto-complete (quote (quote company-explicit-action-p)))
 '(company-flx-mode t)
 '(company-global-modes t)
 '(company-transformers (quote (company-flx-transformer)))
 '(custom-enabled-themes (quote (cyberpunk)))
 '(custom-safe-themes
   (quote
    ("71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" "82b67c7e21c3b12be7b569af7c84ec0fb2d62105629a173e2479e1053cff94bd" default)))
 '(global-linum-mode t)
 '(projectile-global-mode t)
 '(smartparens-global-strict-mode t)
 '(smooth-scrolling-mode t)
 '(tramp-default-method "ssh")
 '(whole-line-or-region-mode t)
 '(yas-global-mode t nil (yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Set font size and other attributes, 140 = 14 pt.
(set-face-attribute 'default nil
                    :height 140)

(provide '99-customize)
;;; 99-custom.el ends here
