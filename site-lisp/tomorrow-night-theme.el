;;; tomorrow-night-theme.el --- custom theme for faces

;;; Commentary:
;;
;;; Tomorrow Night Theme
;;
;; Originally by Chris Kempson https://github.com/ChrisKempson/Tomorrow-Theme
;; Ported to GNU Emacs by Chris Charles
;; Ported to GNU Emacs 24's built-in theme system by Jim Myhrberg (@jimeh)

;;; Code:

(deftheme tomorrow-night
  "A Pastel Coloured Theme")

(let ((background "#1d1f21")
      (current-line "#282a2e")
      (selection "#373b41")
      (foreground "#c5c8c6")
      (gray "#666966")
      (cursor "#aeafad")
      (red "#F92672")
      (orange "#de935f")
      (yellow "#DBDB04")
      (green "#b5bd68")
      (aqua "#4FB090")
      (blue "#81a2be")
      (purple "#81638A"))

  (custom-theme-set-faces
   'tomorrow-night

   ;; Built-in stuff (Emacs 23)
   `(default ((t (:background nil :foreground ,foreground))))
   `(error ((t (:foreground ,red))))
   `(escape-glyph ((t (:foreground ,aqua))))
   `(fringe ((t (:background ,current-line))))
   `(highlight ((t (:background ,green :foreground ,current-line))))
   `(link ((t (:foreground ,blue))))
   `(link-visited ((t (:foreground ,purple))))
   `(minibuffer-prompt ((t (:foreground ,blue))))
   `(mode-line ((t (:background ,selection :foreground ,foreground))))
   `(mode-line-inactive ((t (:background ,current-line :foreground ,foreground))))
   `(region ((t (:background ,selection))))
   `(secondary-selection ((t (:background ,blue))))
   `(shadow ((t (:foreground ,gray))))
   `(success ((t (:foreground ,green))))
   `(trailing-whitespace ((t (:background ,red))))
   `(warning ((t (:foreground ,orange))))

   ;; Font-lock stuff
   `(font-lock-builtin-face ((t (:foreground ,aqua))))
   `(font-lock-comment-face ((t (:foreground ,gray))))
   `(font-lock-constant-face ((t (:foreground ,aqua))))
   `(font-lock-doc-string-face ((t (:foreground ,gray))))
   `(font-lock-function-name-face ((t (:foreground ,blue))))
   `(font-lock-keyword-face ((t (:foreground ,purple))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-type-face ((t (:foreground ,red))))
   `(font-lock-variable-name-face ((t (:foreground ,orange))))
   `(font-lock-warning-face ((t (:foreground ,red))))

   ;; hl-line-mode
   `(hl-line ((t (:background ,current-line))))

   ;; linum-mode
   `(linum ((t (:foreground ,foreground))))

   ;; org-mode
   `(org-date ((t (:foreground ,purple))))
   `(org-done ((t (:foreground ,green))))
   `(org-hide ((t (:foreground ,current-line))))
   `(org-link ((t (:foreground ,blue))))
   `(org-todo ((t (:foreground ,red))))

   ;; show-paren-mode
   `(show-paren-match ((t (:background ,blue :foreground ,current-line))))
   `(show-paren-mismatch ((t (:background ,orange :foreground ,current-line))))

   ;; whitespace-mode
   `(whitespace-empty ((t (:background ,yellow :foreground ,red))))
   `(whitespace-hspace ((t (:background ,selection :foreground ,gray))))
   `(whitespace-indentation ((t (:background ,yellow :foreground ,red))))
   `(whitespace-line ((t (:background ,current-line :foreground ,purple))))
   `(whitespace-newline ((t (:foreground ,gray))))
   `(whitespace-space ((t (:background ,current-line :foreground ,gray))))
   `(whitespace-space-after-tab ((t (:background ,yellow :foreground ,red))))
   `(whitespace-space-before-tab ((t (:background ,orange :foreground ,red))))
   `(whitespace-tab ((t (:background ,selection :foreground ,gray))))
   `(whitespace-trailing ((t (:background ,red :foreground ,yellow))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,purple))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,blue))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,aqua))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,green))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,yellow))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,orange))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,red))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,gray))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,foreground))))

   ;; auctex
   `(font-latex-bold-face ((t (:foreground ,green))))
   `(font-latex-doctex-documentation-face ((t (:background ,current-line))))
   `(font-latex-italic-face ((t (:foreground ,green))))
   `(font-latex-math-face ((t (:foreground ,orange))))
   `(font-latex-sectioning-0-face ((t (:foreground ,yellow))))
   `(font-latex-sectioning-1-face ((t (:foreground ,yellow))))
   `(font-latex-sectioning-2-face ((t (:foreground ,yellow))))
   `(font-latex-sectioning-3-face ((t (:foreground ,yellow))))
   `(font-latex-sectioning-4-face ((t (:foreground ,yellow))))
   `(font-latex-sectioning-5-face ((t (:foreground ,yellow))))
   `(font-latex-sedate-face ((t (:foreground ,aqua))))
   `(font-latex-string-face ((t (:foreground ,yellow))))
   `(font-latex-verbatim-face ((t (:foreground ,orange))))
   `(font-latex-warning-face ((t (:foreground ,red))))

   ;; web-mode
   `(web-mode-builtin-face ((t (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((t (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((t (:inherit ,font-lock-constant-face))))
   `(web-mode-html-tag-face ((t (:foreground ,orange))))
   `(web-mode-html-tag-bracket-face ((t (:foreground ,foreground))))

   ;;company
   `(company-tooltip ((t (:foreground ,orange))))
   `(company-tooltip-annotation ((t (:foreground ,cursor))))
   `(company-tooltip-common ((t (:foreground ,red))))
   `(company-tooltip-search ((t (:foreground ,yellow))))
   `(company-tooltip-selection ((t (:background ,selection))))
   `(company-scrollbar-fg ((t (:background ,red))))
   `(company-scrollbar-bg ((t (:background ,background))))

  ;;flycheck

   `(flycheck-error ((t (:foreground "#B81A18" :weight bold))))
   `(flycheck-warning ((t (:foreground "gold" :weight bold))))

   ;;avy

   `(avy-lead-face ((t (:background ,red :foreground ,foreground))))
   `(avy-lead-face-0 ((t (:background ,red :foreground ,foreground))))
   `(avy-lead-face-1 ((t (:background ,red :foreground ,foreground))))

  ;;helm
  `(helm-selection ((t (:background ,purple :foreground, foreground))))
  `(helm-match ((t (:foreground ,yellow :weight bold)))))

  (custom-theme-set-variables
   'tomorrow-night

   `(ansi-color-names-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [,background ,red ,green ,yellow ,blue ,purple ,blue ,foreground])
   `(ansi-term-color-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [unspecified ,background ,red ,green ,yellow ,blue ,purple ,blue ,foreground])))

(provide-theme 'tomorrow-night)

;;; tomorrow-night-theme.el ends here
