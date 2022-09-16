;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Peter Mai"
      user-mail-address "peter.tn.mai@gmail.com")

(setq doom-font (font-spec :family "Fira Code" :size 14)
      doom-variable-pitch-font (font-spec :family "Fira Sans"))

(setq doom-theme 'doom-vibrant)
(custom-set-faces!
  '(doom-modeline-buffer-modified :foreground "orange"))
(setq which-key-idle-delay 0.5)

(setq org-directory "~/Documents/org/")

(setq display-line-numbers-type nil)
(setq evil-ex-substitute-global t)

(add-hook 'text-mode-hook #'auto-fill-mode)
(setq scroll-margin 6)

;; Templates
(set-file-template! "\\.org$" :trigger "__" :mode 'org-mode)

(setq treemacs-position 'right)

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

(display-time-mode 1)
(global-subword-mode 1)
(setq
        confirm-kill-emacs nil
        org-log-done 'time
        evil-vsplit-window-right t
        evil-split-window-below t)

(add-hook 'text-mode-hook #'auto-fill-mode)
(setq-default fill-column 80)
(setq ispell-program-name "hunspell")

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
(setq org-hide-emphasis-markers t)

(setq org-roam-directory "~/Documents/roam")
(setq exec-path (append exec-path '("/opt/homebrew/bin")))
(require 'org-tempo)
(map! (:after evil-org
       :map evil-org-mode-map
       :n "gk" (cmd! (if (org-on-heading-p)
                         (org-backward-element)
                       (evil-previous-visual-line)))
       :n "gj" (cmd! (if (org-on-heading-p)
                         (org-forward-element)
                       (evil-next-virual-line)))))

(setq company-idle-delay 0.7)
