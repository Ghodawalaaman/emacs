(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(menu-bar-mode -1) ;; remove menubar
(tool-bar-mode -1) ;; remove toolbar
(setq inhibit-splash-screen t);; remove the splash screen

(set-frame-font "Fira Code-16" nil t);; setting some good fonts

(use-package gruvbox-theme
  :ensure t
  :config
  (load-theme 'gruvbox-dark-medium t))
(use-package erc :ensure t)
(use-package lem :ensure t)
(use-package emms :ensure t)
(use-package 0x0 :ensure t)

(setq erc-autojoin-channels-alist
          '(("Libera.chat" "#emacs" "#bash" "#bsah" "#archlinux" "#gentoo" "#rust")))

(require 'emms-setup)
(emms-standard) ;; Initialize EMMS with standard settings
(emms-default-players) ;; Set up default players
(setq emms-player-mpv-parameters '("--volume=50"))
(global-set-key (kbd "C-c e +") 'emms-volume-raise)
(global-set-key (kbd "C-c e -") 'emms-volume-lower)

(setq lem-instance-url "https://lemmy.ca")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(0x0 emms-setup emms lem gruvbox-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
