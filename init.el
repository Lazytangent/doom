;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a "Module Index" link where you'll find
;;      a comprehensive list of Doom's modules and what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :app
       calendar

       :checkers
       (syntax +childframe)
       (spell +flyspell +hunspell)

       :completion
       ;; (company)
       (ivy +fuzzy +prescient +icons +childframe)

       :config
       (default +bindings +smartparens)

       :editor
       (evil +everywhere)
       file-templates
       fold
       format
       snippets
       word-wrap

       :emacs
       (dired +icons)
       electric
       ibuffer
       undo
       vc

       :email

       :input

       :lang
       (cc +lsp)
       (elixir +lsp)
       emacs-lisp
       erlang
       (go +lsp)
       (java +meghanada +lsp)
       (javascript +lsp)
       (json +lsp)
       latex
       lua
       markdown
       (org +brain +roam2 +pretty)
       (python +lsp +pyright +pyenv)
       (ruby +rails +lsp +rbenv)
       (rust +lsp)
       (scheme +guile)
       (sh +lsp)
       (swift +lsp)
       (web +lsp)
       (yaml +lsp)

       :os
       (:if IS-MAC macos)
       (tty +osc)

       :term
       vterm

       :tools
       direnv
       (docker +lsp)
       (debugger +lsp)
       editorconfig
       (eval +overlay)
       gist
       lookup
       (lsp +peek)
       (magit +forge)
       pdf
       rgb

       :ui
       deft
       doom
       doom-dashboard
       (emoji +unicode)
       hl-todo
       indent-guides
       (ligatures +fira)
       modeline
       nav-flash
       ophints
       (popup +defaults)
       treemacs
       vc-gutter
       vi-tilde-fringe
       (window-select +numbers)
       workspaces
)
