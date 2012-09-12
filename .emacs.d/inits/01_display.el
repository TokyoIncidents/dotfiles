;; window settings
(if window-system
    (progn
      (set-frame-parameter nil 'alpha 85)
      (tool-bar-mode 0)
      (set-scroll-bar-mode nil)
      (setq line-spacing 0.2)
      (when (>= emacs-major-version 23)
        (tool-bar-mode 0)
        ;; http://blog.sanojimaru.com/post/19807398882/cocoa-emacs-ricty
        ;; Fonts
        (if (eq window-system 'x)
            (setq s 12)
          (setq s 15))
        (let* ((size s)
                (asciifont "Ricty")
                (jpfont "Ricty")
                (h (* size 10))
                (fontspec (font-spec :family asciifont))
                (jp-fontspec (font-spec :family jpfont)))
          (set-face-attribute 'default nil :family asciifont :height h)
          (set-fontset-font nil 'japanese-jisx0213.2004-1 jp-fontspec)
          (set-fontset-font nil 'japanese-jisx0213-2 jp-fontspec)
          (set-fontset-font nil 'katakana-jisx0201 jp-fontspec)
          (set-fontset-font nil '(#x0080 . #x024F) fontspec) 
          (set-fontset-font nil '(#x0370 . #x03FF) fontspec)))
      (setq ns-pop-up-frames nil)))

;; color settings
(set-foreground-color                                  "#CCCCCC")
(set-background-color                                  "#222222")
(set-cursor-color                                      "#FF0000")
(set-face-background 'region                           "#222244")
(set-face-foreground 'modeline                         "#CCCCCC")
(set-face-background 'modeline                         "#222222")
(set-face-foreground 'mode-line-inactive               "#222222")
(set-face-background 'mode-line-inactive               "#CCCCCC")
(set-face-foreground 'font-lock-comment-delimiter-face "#888888")
(set-face-foreground 'font-lock-comment-face           "#888888")
(set-face-foreground 'font-lock-string-face            "#7FFF7F")
(set-face-foreground 'font-lock-function-name-face     "#BF7FFF")
(set-face-foreground 'font-lock-keyword-face           "#FF7F7F")
(set-face-foreground 'font-lock-constant-face          "#FFBF7F")
(set-face-foreground 'font-lock-variable-name-face     "#7F7FFF")
(set-face-foreground 'font-lock-type-face              "#FFFF7F")
(set-face-foreground 'fringe                           "#666666")
(set-face-background 'fringe                           "#282828")

;; http://subtech.g.hatena.ne.jp/antipop/20071016/1192546147
(setq truncate-partial-width-windows nil)
