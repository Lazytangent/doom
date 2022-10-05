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
       (cc +lsp +tree-sitter)
       (elixir +lsp +tree-sitter)
       emacs-lisp
       erlang
       (go +lsp +tree-sitter)
       (java +meghanada +lsp +tree-sitter)
       (javascript +lsp +tree-sitter)
       (json +lsp +tree-sitter)
       latex
       lua
       markdown
       (org +brain +roam2 +pretty)
       (python +lsp +pyright +pyenv +tree-sitter)
       (rest +jq)
       (ruby +rails +lsp +rbenv +tree-sitter)
       (rust +lsp +tree-sitter)
       (scheme +guile)
       (sh +lsp)
       (swift +lsp +tree-sitter)
       (web +lsp +tree-sitter)
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
       tree-sitter

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
