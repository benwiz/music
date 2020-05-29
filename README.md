# music

Collection of sheet music and audio recordings.

## How to use Lilypon

Install

``` sh
sudo apt install -y lilypond
```

Configure Emacs

``` lisp
(setq load-path (append (list (expand-file-name "/usr/share/emacs/site-lisp")) load-path))
(require 'lilypond-mode)
(add-to-list 'auto-mode-alist '("\\.ly\\'" . LilyPond-mode))
```

I have a custom compilation function bound to `C-c C-k` but the built in is bound to `C-c C-l` or `M-x LilyPond-command-lilypond`.

## To Do

- Can code be shared between multiple lilypond files?
