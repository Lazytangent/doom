;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Peter Mai"
      user-mail-address "peter.tn.mai@gmail.com")

(setq doom-font (font-spec :family "Fira Code" :size 14)
      doom-variable-pitch-font (font-spec :family "Fira Sans"))

(setq doom-theme 'doom-vibrant
      which-key-idle-delay 0.5
      org-directory "~/Documents/org/"
      display-line-numbers-type nil
      evil-ex-substitute-global t)
(setq scroll-margin 6)
(setq treemacs-position 'right)
(setq
        confirm-kill-emacs nil
        org-log-done 'time
        evil-vsplit-window-right t
        evil-split-window-below t)
(setq ispell-program-name "hunspell")
(setq org-hide-emphasis-markers t)
(setq org-roam-directory "~/Documents/roam")
(setq exec-path (append exec-path '("/opt/homebrew/bin")))
(setq company-idle-delay 0.7)

(setq-default fill-column 80)

(add-hook 'text-mode-hook #'auto-fill-mode)

;; Templates
(set-file-template! "\\.org$" :trigger "__" :mode 'org-mode)

(defun +yas/org-src-lang ()
  "Try to find the current language of the src/header at `point'. Return nil otherwise."
  (let ((context (org-element-context)))
    (pcase (org-element-type context)
      ('src-block (org-element-property :language context))
      ('inline-src-block (org-element-property :language context))
      ('keyword (when (string-match "^header-args:\\([^ ]+\\)" (org-element-property :value context))
                  (match-string 1 (org-element-property :value context)))))))

(defun +yas/org-last-src-lang ()
  "Return the language of the last src-block, if it exists."
  (save-excursion
    (beginning-of-line)
    (when (re-search-backward "^[ \t]*#\\+begin_src" nil t)
      (org-element-property :language (org-element-context)))))

(setq frame-title-format
      '(""
        (:eval
         (if (s-contains-p org-roam-directory (or buffer-file-name ""))
             (replace-regexp-in-string
              ".*/[0-9]*-?" "☰ "
              (subst-char-in-string ?_ ? buffer-file-name))
           "%b"))
        (:eval
         (let ((project-name (projectile-project-name)))
           (unless (string= "-" project-name)
             (format (if (buffer-modified-p)  " ◉ %s" "  ●  %s") project-name))))))

(after! (yas-reload-all)
  (add-hook 'prog-mode-hook #'yas-minor-mode))
