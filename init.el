(require 'cask "/usr/local/Cellar/cask/0.7.4/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(mapc 'load (directory-files "~/.emacs.d/customizations" t "^[0-9]+.*\.el$"))

(provide 'init)