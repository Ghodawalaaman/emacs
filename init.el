(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(menu-bar-mode -1) ;; remove menubar
(tool-bar-mode -1) ;; remove toolbar
(setq inhibit-splash-screen t);; remove the splash screen

(set-frame-font "FiraCode Nerd Font Mono-14" nil t);; setting some good fonts

(use-package gruvbox-theme
  :ensure t
  :config
  (load-theme 'gruvbox-dark-medium t))
(use-package erc :ensure t)
(use-package emms :ensure t)
(use-package 0x0 :ensure t)
(use-package expand-region :ensure t)
(use-package rust-mode :ensure t)
(use-package elpher :ensure t)
(use-package multiple-cursors :ensure t)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(setq erc-autojoin-channels-alist
      '(("Libera.chat" "#emacs" "#bash" "#bsah" "#archlinux" "#gentoo" "#rust" "#gemini" "#git" "#lisp")))

(require 'emms-setup)
(emms-standard) ;; Initialize EMMS with standard settings
(emms-default-players) ;; Set up default players
(setq emms-player-mpv-parameters '("--volume=50"))
(global-set-key (kbd "C-c e +") 'emms-volume-raise)
(global-set-key (kbd "C-c e -") 'emms-volume-lower)

(setq lem-instance-url "https://lemmy.ca")
