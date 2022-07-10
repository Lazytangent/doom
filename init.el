;;; init.el -*- lexical-binding: t; -*-

(doom! :app
       calendar

       :checkers
       (syntax +childframe)
       (spell +flyspell +hunspell)

       :completion
       (company +childframe)
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
