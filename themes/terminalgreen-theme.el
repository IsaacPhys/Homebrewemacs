;;; terminalgreen-theme.el --- Terminalgreen Color Theme


;; Author: Ruoquan Isaac Wang <hepisaacf@gmail.com>
;; Keywords: color theme terminalgreen

;; This theme is based on cyberpunk theme. Some adjustment
;; has been made to get another color style. The framework
;; of cyberpunk theme was kept, cause this is the main reason
;; to choose cyberpunk theme as an origin. Thanks a lot to
;; the author of cyberpunk theme.

;; Due to the author's poor ability, this theme is still
;; under construction. Changes will be made once some
;; ugly colors appear during working. Consistency of color
;; is the aim of this theme, but not garanteed. If you
;; found inconsistency of color in any environment, do not
;; hesitate to contact with the author.



(deftheme terminalgreen "The Terminalgreen color theme")

(defcustom terminalgreen-transparent-background nil
  "Make transparent background in terminal. (Workaround)")

(let ((class '((class color) (min-colors 89)))
      ;; Terminalgreen palette
      (terminalgreen-fg "#dcdccc")
      (terminalgreen-bg-1 "#2b2b2b")
      (terminalgreen-bg-05 "#383838")
      (terminalgreen-bg "#000000")
      (terminalgreen-bg+1 "#4f4f4f")
      (terminalgreen-bg+2 "#5f5f5f")
      (terminalgreen-bg+3 "#6f6f6f")
      (terminalgreen-red+1 "#dca3a3")
      (terminalgreen-dark-red "#8a0f00")
      (terminalgreen-red "#ff0000")
      (terminalgreen-red-1 "#8b0000")
      (terminalgreen-red-2 "#8b0000")
      (terminalgreen-red-3 "#9c6363")
      (terminalgreen-red-4 "#8c5353")
      (terminalgreen-red-5 "#7F073F")
      (terminalgreen-pink "#ff69b4")
      (terminalgreen-pink-1 "#ff1493")
      (terminalgreen-pink-2 "#cd1076")
      (terminalgreen-orange-2 "#FF6400")
      (terminalgreen-orange-1 "#ff8c00") ;; DarkOrange
      (terminalgreen-orange "#ffa500")
      (terminalgreen-yellow "#ffff00")
      (terminalgreen-yellow-1 "#FBDE2D")
      (terminalgreen-yellow-2 "#d0bf8f")
      (terminalgreen-yellow-3 "#D8FA3C")
      (terminalgreen-yellow-4 "#E9C062")
      (terminalgreen-yellow-5 "#ffd700")
      (terminalgreen-dark-green "#006400")
      (terminalgreen-green-1 "#2e8b57")
      (terminalgreen-green-4 "#008b00")
      (terminalgreen-green-3 "#00cd00")
      (terminalgreen-green "#31ef5b")
      (terminalgreen-green+1 "#61CE3C")
      (terminalgreen-green+2 "#9fc59f")
      (terminalgreen-green+3 "#afd8af")
      (terminalgreen-green+4 "#bfebbf")
      (terminalgreen-forest-green "#228b22")
      (terminalgreen-pale-green "#548b54")
      (terminalgreen-spring-green-4 "#008b45")
      (terminalgreen-cyan "#93e0e3")
      (terminalgreen-blue+1 "#94bff3")
      (terminalgreen-blue "#0432ff")    ;; blue
      (terminalgreen-blue-1 "#7b68ee")  ;; medium slate blue
      (terminalgreen-blue-2 "#6a5acd")  ;; slate blue
      (terminalgreen-blue-3 "#0226cc")
      (terminalgreen-light-blue "#add8e6")  ;; light blue
      (terminalgreen-light-blue-2 "#b2dfee")  ;; LightBlue2
      (terminalgreen-blue-5 "#4c83ff")
      (terminalgreen-blue-6 "#96CBFE")
      (terminalgreen-blue-7 "#00ffff")
      (terminalgreen-blue-8 "#4F94CD")
      (terminalgreen-blue-4 "#01168a")
      (terminalgreen-medium-blue "#0226cc")
      (terminalgreen-sky-bule-1 "#87ceff")
      (terminalgreen-purple-4 "#5d478b")
      (terminalgreen-dodger-blue "#1e90ff")
      (terminalgreen-dodger-blue-3 "#1874cd")
      (terminalgreen-dodger-blue-4 "#104e8b")
      (terminalgreen-dark-blue "#01168a")
      (terminalgreen-magenta "#dc8cc3")
      (terminalgreen-black (if (and terminalgreen-transparent-background
                                (not (display-graphic-p))
                                (eq system-type 'darwin))
                           "ARGBBB000000"
                         "#000000"))
      (terminalgreen-black-2 "#0C1021")
      (terminalgreen-black-3 "#0A0A0A")
      (terminalgreen-gray "#d3d3d3")
      (terminalgreen-gray-2 "#8B8989")
      (terminalgreen-gray-3 "#919191")
      (terminalgreen-gray-4 "#999999")
      (terminalgreen-gray-5 "#333333")
      (terminalgreen-gray-6 "#1A1A1A")
      (terminalgreen-gray-7 "#4D4D4D")
      (terminalgreen-gray-8 "#262626")
      (terminalgreen-gray-9 "#f7f7f7")
      (terminalgreen-white "#ffffff")
      (terminalgreen-white-2 "#F8F8F8")
      (terminalgreen-white-3 "#fffafa"))

 (custom-theme-set-faces
   'terminalgreen
   '(button ((t (:underline t))))
   `(link ((,class (:foreground ,terminalgreen-blue-3 :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,terminalgreen-purple-4 :underline t :weight normal))))
   `(blue ((,class (:foreground ,terminalgreen-blue))))
   `(bold ((,class (:bold t))))
   `(border-glyph ((,class (nil))))
   `(buffers-tab ((,class (:background ,terminalgreen-black-2 :foreground ,terminalgreen-white-2))))

   ;;; basic coloring
   
   `(default ((,class (:foreground ,terminalgreen-green-3 :background ,terminalgreen-bg))))
   `(cursor ((,class (:background ,terminalgreen-fg))))
   `(escape-glyph-face ((,class (:foreground ,terminalgreen-red))))
   ;; `(fringe ((,class (:foreground ,terminalgreen-fg :background ,terminalgreen-bg+1))))
   `(header-line ((,class (:foreground ,terminalgreen-blue
                                       :background ,terminalgreen-bg-1
                                       :box (:line-width -1 :style released-button)))))
   `(highlight ((,class (:background ,terminalgreen-gray-5))))

   ;;; compilation
   `(compilation-column-face ((,class (:foreground ,terminalgreen-yellow))))
   `(compilation-enter-directory-face ((,class (:foreground ,terminalgreen-green))))
   `(compilation-error-face ((,class (:foreground ,terminalgreen-red-1 :weight bold :underline t))))
   `(compilation-face ((,class (:foreground ,terminalgreen-fg))))
   `(compilation-info-face ((,class (:foreground ,terminalgreen-blue))))
   `(compilation-info ((,class (:foreground ,terminalgreen-green+4 :underline t))))
   `(compilation-leave-directory-face ((,class (:foreground ,terminalgreen-green))))
   `(compilation-line-face ((,class (:foreground ,terminalgreen-yellow))))
   `(compilation-line-number ((,class (:foreground ,terminalgreen-yellow))))
   `(compilation-message-face ((,class (:foreground ,terminalgreen-blue))))
   `(compilation-warning-face ((,class (:foreground ,terminalgreen-yellow-1 :weight bold :underline t))))

   ;;; grep
   `(grep-context-face ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-pink-1))))
   `(grep-error-face ((,class (:foreground ,terminalgreen-red :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-red))))
   `(grep-match-face ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-pink-1))))
   `(match ((,class (:background ,terminalgreen-black :foreground ,terminalgreen-pink-1))))

  

  
   
   ;;; ivy
   `(ivy-current-match ((t (:background "dark red" :foreground "black")))) 


   ;;; multiple-cursors
   `(mc/cursor-face ((,class (:inverse-video nil, :background ,terminalgreen-pink :foreground ,terminalgreen-black))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,terminalgreen-dark-green :background ,terminalgreen-dark-blue))))
   `(isearch-fail ((,class (:background ,terminalgreen-red-1))))
   
   `(lazy-highlight ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-yellow))))
   `(query-replace ((,class (:background ,terminalgreen-gray-5))))
   `(Highline-face ((,class (:background ,terminalgreen-green-1))))
   `(left-margin ((,class (nil))))
   `(toolbar ((,class (nil))))
   `(text-cursor ((,class (:background ,terminalgreen-yellow :foreground ,terminalgreen-black))))

  ; `(menu ((,class (:foreground ,terminalgreen-fg :background ,terminalgreen-bg))))
   `(minibuffer-prompt ((,class (:foreground ,terminalgreen-dark-green :background ,terminalgreen-black))))
   `(mode-line
     ((,class (:foreground ,terminalgreen-gray-9
                           :background ,terminalgreen-dark-red
                           :box (:line-width 1 :color ,terminalgreen-dark-red)))))
  ;; `(mode-line-buffer-id ((,class (:foreground ,terminalgreen-gray-9 :weight bold))))
   `(mode-line-inactive
     ((,class (:foreground ,terminalgreen-dark-green
                           :background ,terminalgreen-bg
                           :box (:line-width 1 :color ,terminalgreen-dark-green)))))
   `(region ((,class (:foreground ,terminalgreen-green-4
                                  :background ,terminalgreen-dark-blue))))
   `(secondary-selection ((,class (:background ,terminalgreen-bg+2))))
   `(trailing-whitespace ((,class (:background ,terminalgreen-red))))
   `(vertical-border ((,class (:foreground ,terminalgreen-dark-green :background ,terminalgreen-bg))))

   ;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,terminalgreen-blue))))
   `(font-lock-comment-face ((,class (:foreground ,terminalgreen-gray-2 :italic t))))
   ;; `(font-lock-comment-delimiter-face ((,class (:foreground ,terminalgreen-green)))) 
   `(font-lock-constant-face ((,class (:foreground ,terminalgreen-purple-4))))
   ;; `(font-lock-doc-face ((,class (:foreground ,terminalgreen-green+1))))
   `(font-lock-doc-face ((,class (:foreground ,terminalgreen-forest-green))))
   `(font-lock-function-name-face ((,class (:foreground ,terminalgreen-blue))))
   `(font-lock-keyword-face ((,class (:foreground ,terminalgreen-medium-blue))))
   ;; `(font-lock-negation-char-face ((,class (:foreground ,terminalgreen-fg))))
   `(font-lock-preprocessor-face ((,class (:foreground ,terminalgreen-gray-3))))
   `(font-lock-string-face ((,class (:foreground ,terminalgreen-pale-green))))
   `(font-lock-type-face ((,class (:foreground ,terminalgreen-medium-blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,terminalgreen-green-1))))
   `(font-lock-warning-face ((,class (:foreground ,terminalgreen-dark-red))))
   `(font-lock-reference-face ((,class (:foreground ,terminalgreen-gray))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,terminalgreen-yellow-4))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,terminalgreen-red))))

   `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   `(gui-element ((,class (:background ,terminalgreen-gray-5 :foreground ,terminalgreen-blue-6))))

   ;;; newsticker
   ;; These are currently placeholders that probably look terrible.
   ;; Someone who uses newsticker is welcome to change these
   `(newsticker-date-face ((,class (:foreground ,terminalgreen-fg))))
   `(newsticker-default-face ((,class (:foreground ,terminalgreen-fg))))
   `(newsticker-enclosure-face ((,class (:foreground ,terminalgreen-green+3))))
   `(newsticker-extra-face ((,class (:foreground ,terminalgreen-bg+2 :height 0.8))))
   `(newsticker-feed-face ((,class (:foreground ,terminalgreen-fg))))
   `(newsticker-immortal-item-face ((,class (:foreground ,terminalgreen-green))))
   `(newsticker-new-item-face ((,class (:foreground ,terminalgreen-blue))))
   `(newsticker-obsolete-item-face ((,class (:foreground ,terminalgreen-red))))
   `(newsticker-old-item-face ((,class (:foreground ,terminalgreen-bg+3))))
   `(newsticker-statistics-face ((,class (:foreground ,terminalgreen-fg))))
   `(newsticker-treeview-face ((,class (:foreground ,terminalgreen-fg))))
   `(newsticker-treeview-immortal-face ((,class (:foreground ,terminalgreen-green))))
   `(newsticker-treeview-listwindow-face ((,class (:foreground ,terminalgreen-fg))))
   `(newsticker-treeview-new-face ((,class (:foreground ,terminalgreen-blue :weight bold))))
   `(newsticker-treeview-obsolete-face ((,class (:foreground ,terminalgreen-red))))
   `(newsticker-treeview-old-face ((,class (:foreground ,terminalgreen-bg+3))))
   `(newsticker-treeview-selection-face ((,class (:foreground ,terminalgreen-yellow))))

   ;;; external

   ;; full-ack
   `(ack-separator ((,class (:foreground ,terminalgreen-fg))))
   `(ack-file ((,class (:foreground ,terminalgreen-blue))))
   `(ack-line ((,class (:foreground ,terminalgreen-yellow))))
   `(ack-match ((,class (:foreground ,terminalgreen-orange :background ,terminalgreen-bg-1 :weigth bold))))

   ;; auctex
   `(font-latex-bold ((,class (:inherit bold))))
   `(font-latex-warning ((,class (:inherit font-lock-warning))))
   `(font-latex-sedate ((,class (:foreground ,terminalgreen-yellow :weight bold))))
   `(font-latex-string ((,class (:foreground ,terminalgreen-green))))
   `(font-latex-title-4 ((,class (:inherit variable-pitch :weight bold))))
   `(font-latex-sectioning-0 ((,class (:foreground ,terminalgreen-blue :background ,terminalgreen-black :scale 1.5))))
   `(font-latex-sectioning-1 ((,class (:foreground ,terminalgreen-blue :background ,terminalgreen-black :scale 1.5))))
   `(font-latex-sectioning-2-face ((,class (:foreground ,terminalgreen-green+2))))
   `(font-latex-math-face ((,class (:foreground ,terminalgreen-sky-bule-1))))
   `(font-latex-warning-face ((,class (:foreground ,terminalgreen-dark-red))))

   ;; auto-complete
   `(ac-completion-face ((,class (:background ,terminalgreen-gray-2 :underline t))))
   `(ac-candidate-face ((,class (:background ,terminalgreen-gray-4 :foreground ,terminalgreen-black))))
   `(ac-selection-face ((,class (:background ,terminalgreen-pink-1 :foreground ,terminalgreen-black))))
   `(popup-tip-face ((,class (:background ,terminalgreen-gray-5 :foreground ,terminalgreen-white))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,terminalgreen-black-3))))
   `(popup-scroll-bar-background-face ((,class (:background ,terminalgreen-gray-5))))
   `(popup-isearch-match ((,class (:background ,terminalgreen-black :foreground ,terminalgreen-pink-1))))

   `(window-number-face ((,class (:background ,terminalgreen-gray-6 :foreground ,terminalgreen-blue-5))))

   ;; company-mode
   `(company-tooltip ((,class (:background ,terminalgreen-gray-2 :foreground ,terminalgreen-dark-green)))) 
   `(company-tooltip-common ((,class (:inherit company-tooltip :foreground ,terminalgreen-blue))))
   `(company-tooltip-common-selection ((,class (:inherit company-tooltip-selection :foreground ,terminalgreen-green-3))))
   `(company-tooltip-selection ((,class (:foreground ,terminalgreen-green-3 :background ,terminalgreen-dark-blue))))
   `(company-tooltip-annotation ((,class (:inherit company-tooltip :foreground ,terminalgreen-black-3))))
   `(company-scrollbar-fg ((,class (:background ,terminalgreen-black-3))))
   `(company-scrollbar-bg ((,class (:background ,terminalgreen-gray-5))))
   `(company-preview ((,class (:foreground ,terminalgreen-gray :background ,terminalgreen-dark-blue))))
   `(company-preview-common ((,class (:foreground ,terminalgreen-gray :background ,terminalgreen-dark-blue)))) 
   
   ;; diff
   `(diff-added ((,class (:foreground ,terminalgreen-green))))
   `(diff-changed ((,class (:foreground ,terminalgreen-yellow))))
   `(diff-removed ((,class (:foreground ,terminalgreen-red))))
   `(diff-header ((,class (:background ,terminalgreen-bg+2))))
   `(diff-file-header ((,class (:background ,terminalgreen-bg+2 :foreground ,terminalgreen-fg :bold t))))

   ;; ediff
   `(ediff-current-diff-Ancestor ((,class (:foreground ,terminalgreen-fg :background ,terminalgreen-pink))))
   `(ediff-current-diff-A ((,class (:foreground ,terminalgreen-fg :background ,terminalgreen-bg-05))))
   `(ediff-current-diff-B ((,class (:foreground ,terminalgreen-fg :background ,terminalgreen-bg+1))))
   `(ediff-current-diff-C ((,class (:foreground ,terminalgreen-fg :background ,terminalgreen-bg+2))))
   `(ediff-even-diff-Ancestor ((,class (:foreground ,terminalgreen-white :background ,terminalgreen-bg-05))))
   `(ediff-even-diff-A ((,class (:foreground ,terminalgreen-white :background ,terminalgreen-bg+1))))
   `(ediff-even-diff-B ((,class (:foreground ,terminalgreen-white :background ,terminalgreen-bg+2))))
   `(ediff-even-diff-C ((,class (:foreground ,terminalgreen-white :background ,terminalgreen-bg+3))))
   `(ediff-fine-diff-Ancestor ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-pink))))
   `(ediff-fine-diff-A ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-blue-5))))
   `(ediff-fine-diff-B ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-blue-5))))
   `(ediff-fine-diff-C ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-blue-5))))
   `(ediff-odd-diff-Ancestor ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-gray-2))))
   `(ediff-odd-diff-A ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-gray-3))))
   `(ediff-odd-diff-B ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-gray-4))))
   `(ediff-odd-diff-C ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-gray))))

   ;; ert
   `(ert-test-result-expected ((,class (:foreground ,terminalgreen-green+4 :background ,terminalgreen-bg))))
   `(ert-test-result-unexpected ((,class (:foreground ,terminalgreen-red :background ,terminalgreen-bg))))

   ;; eshell
   `(eshell-prompt ((,class (:foreground ,terminalgreen-blue-5 :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,terminalgreen-magenta :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,terminalgreen-blue+1 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,terminalgreen-red+1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,terminalgreen-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,terminalgreen-yellow :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,terminalgreen-cyan :weight bold))))

   ;; flymake
   `(flymake-errline ((,class (:foreground ,terminalgreen-red-1 :weight bold :underline t))))
   `(flymake-warnline ((,class (:foreground ,terminalgreen-yellow-1 :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((,class (:foreground ,terminalgreen-yellow-1 :weight bold :underline t))))
   `(flyspell-incorrect ((,class (:foreground ,terminalgreen-orange-2 :weight bold :underline t))))

   ;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,terminalgreen-blue :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,terminalgreen-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,terminalgreen-yellow))))
   `(erc-keyword-face ((,class (:foreground ,terminalgreen-blue :weight bold))))
   `(erc-nick-default-face ((,class (:foreground ,terminalgreen-yellow :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,terminalgreen-red :weigth bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,terminalgreen-green))))
   `(erc-pal-face ((,class (:foreground ,terminalgreen-orange :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,terminalgreen-orange :background ,terminalgreen-bg :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,terminalgreen-green+1))))
   `(erc-underline-face ((t (:underline t))))

   ;; gnus
   `(gnus-group-mail-1 ((,class (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2 ((,class (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3 ((,class (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4 ((,class (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty ((,class (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5 ((,class (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty ((,class (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6 ((,class (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty ((,class (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low ((,class (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1 ((,class (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2 ((,class (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3 ((,class (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4 ((,class (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5 ((,class (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6 ((,class (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low ((,class (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content ((,class (:inherit message-header-other))))
   `(gnus-header-from ((,class (:inherit message-header-from))))
   `(gnus-header-name ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups ((,class (:inherit message-header-other))))
   `(gnus-header-subject ((,class (:inherit message-header-subject))))
   `(gnus-summary-cancelled ((,class (:foreground ,terminalgreen-orange))))
   `(gnus-summary-high-ancient ((,class (:foreground ,terminalgreen-blue))))
   `(gnus-summary-high-read ((,class (:foreground ,terminalgreen-green :weight bold))))
   `(gnus-summary-high-ticked ((,class (:foreground ,terminalgreen-orange :weight bold))))
   `(gnus-summary-high-unread ((,class (:foreground ,terminalgreen-fg :weight bold))))
   `(gnus-summary-low-ancient ((,class (:foreground ,terminalgreen-blue))))
   `(gnus-summary-low-read ((t (:foreground ,terminalgreen-green))))
   `(gnus-summary-low-ticked ((,class (:foreground ,terminalgreen-orange :weight bold))))
   `(gnus-summary-low-unread ((,class (:foreground ,terminalgreen-fg))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,terminalgreen-blue+1))))
   `(gnus-summary-normal-read ((,class (:foreground ,terminalgreen-green))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,terminalgreen-orange :weight bold))))
   `(gnus-summary-normal-unread ((,class (:foreground ,terminalgreen-fg))))
   `(gnus-summary-selected ((,class (:foreground ,terminalgreen-yellow :weight bold))))
   `(gnus-cite-1 ((,class (:foreground ,terminalgreen-yellow-2))))
   `(gnus-cite-10 ((,class (:foreground ,terminalgreen-yellow-1))))
   `(gnus-cite-11 ((,class (:foreground ,terminalgreen-yellow))))
   `(gnus-cite-2 ((,class (:foreground ,terminalgreen-blue-1))))
   `(gnus-cite-3 ((,class (:foreground ,terminalgreen-blue-2))))
   `(gnus-cite-4 ((,class (:foreground ,terminalgreen-green+2))))
   `(gnus-cite-5 ((,class (:foreground ,terminalgreen-green+1))))
   `(gnus-cite-6 ((,class (:foreground ,terminalgreen-green))))
   `(gnus-cite-7 ((,class (:foreground ,terminalgreen-red))))
   `(gnus-cite-8 ((,class (:foreground ,terminalgreen-red-1))))
   `(gnus-cite-9 ((,class (:foreground ,terminalgreen-red-2))))
   `(gnus-group-news-1-empty ((,class (:foreground ,terminalgreen-yellow))))
   `(gnus-group-news-2-empty ((,class (:foreground ,terminalgreen-green+3))))
   `(gnus-group-news-3-empty ((,class (:foreground ,terminalgreen-green+1))))
   `(gnus-group-news-4-empty ((,class (:foreground ,terminalgreen-blue-2))))
   `(gnus-group-news-5-empty ((,class (:foreground ,terminalgreen-light-blue))))
   `(gnus-group-news-6-empty ((,class (:foreground ,terminalgreen-bg+2))))
   `(gnus-group-news-low-empty ((,class (:foreground ,terminalgreen-bg+2))))
   `(gnus-signature ((,class (:foreground ,terminalgreen-yellow))))
   `(gnus-x ((,class (:background ,terminalgreen-fg :foreground ,terminalgreen-bg))))

   ;; helm
   `(helm-header
     ((,class (:foreground ,terminalgreen-green
                           :background ,terminalgreen-bg
                           :underline nil
                           :box nil))))
   `(helm-source-header
     ((,class (:foreground ,terminalgreen-yellow
                           :background ,terminalgreen-bg-1
                           :underline nil
                           :weight bold
                           :box (:line-width -1 :style released-button)))))
   `(helm-selection ((,class (:background ,terminalgreen-bg-1 :underline nil))))
   `(helm-selection-line ((,class (:background ,terminalgreen-bg+1))))
   `(helm-visible-mark ((,class (:foreground ,terminalgreen-bg :background ,terminalgreen-yellow-2))))
   `(helm-candidate-number ((,class (:foreground ,terminalgreen-green+4 :background ,terminalgreen-bg-1))))
   `(helm-ff-directory ((,class (:foreground ,terminalgreen-pink :background ,terminalgreen-bg))))
   `(helm-ff-dotted-directory ((,class (:foreground ,terminalgreen-pink :background ,terminalgreen-bg))))

   ;; hl-line-mode
   `(hl-sexp-face ((,class (:background ,terminalgreen-gray-5))))
   `(hl-line-face ((,class (:background ,terminalgreen-gray-5))))

   ;; ido-mode
   `(ido-first-match ((,class (:foreground ,terminalgreen-pink-1 :background ,terminalgreen-black))))
   `(ido-only-match ((,class (:foreground ,terminalgreen-pink-1 :background ,terminalgreen-black))))
   `(ido-subdir ((,class (:foreground ,terminalgreen-gray-4 :backgroun ,terminalgreen-black))))
   `(ido-indicator ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-pink-1))))

   ;; js2-mode
   `(js2-warning-face ((,class (:underline ,terminalgreen-orange))))
   `(js2-error-face ((,class (:foreground ,terminalgreen-red :weight bold))))
   `(js2-jsdoc-tag-face ((,class (:foreground ,terminalgreen-green-1))))
   `(js2-jsdoc-type-face ((,class (:foreground ,terminalgreen-green+2))))
   `(js2-jsdoc-value-face ((,class (:foreground ,terminalgreen-green+3))))
   `(js2-function-param-face ((,class (:foreground ,terminalgreen-green+3))))
   `(js2-external-variable-face ((,class (:foreground ,terminalgreen-orange))))

   ;; jabber-mode
   `(jabber-roster-user-away ((,class (:foreground ,terminalgreen-green+2))))
   `(jabber-roster-user-online ((,class (:foreground ,terminalgreen-blue-1))))
   `(jabber-roster-user-dnd ((,class (:foreground ,terminalgreen-red+1))))
   `(jabber-rare-time-face ((,class (:foreground ,terminalgreen-green+1))))
   `(jabber-chat-prompt-local ((,class (:foreground ,terminalgreen-blue-1))))
   `(jabber-chat-prompt-foreign ((,class (:foreground ,terminalgreen-red+1))))
   `(jabber-activity-face((,class (:foreground ,terminalgreen-red+1))))
   `(jabber-activity-personal-face ((,class (:foreground ,terminalgreen-blue+1))))
   `(jabber-title-small ((,class (:height 1.1 :weight bold))))
   `(jabber-title-medium ((,class (:height 1.2 :weight bold))))
   `(jabber-title-large ((,class (:height 1.3 :weight bold))))

   ;; linum-mode
   `(linum ((,class (:foreground ,terminalgreen-green-4 :background ,terminalgreen-bg))))

   ;;linum-relative
   `(linum-relative-current-face ((,class (:inherit linum :foreground ,terminalgreen-white :weight bold))))

   ;; magit
   ;; magit headings and diffs
   `(magit-section-highlight ((t (:background ,terminalgreen-bg+1))))
   `(magit-section-heading ((t (:foreground ,terminalgreen-blue+1 :weight bold))))
   `(magit-section-heading-selection ((t (:foreground ,terminalgreen-red+1 :weight bold))))
   `(magit-diff-file-heading           ((t (:weight bold))))
   `(magit-diff-file-heading-highlight ((t (:background ,terminalgreen-bg+2  :weight bold))))
   `(magit-diff-file-heading-selection ((t (:background ,terminalgreen-bg+2
                                            :foreground ,terminalgreen-blue-6 :weight bold))))
   `(magit-diff-hunk-heading           ((t (:background ,terminalgreen-bg))))
   `(magit-diff-hunk-heading-highlight ((t (:background ,terminalgreen-bg+1))))
   `(magit-diff-hunk-heading-selection ((t (:background ,terminalgreen-bg+1
                                            :foreground ,terminalgreen-blue-6))))
   `(magit-diff-lines-heading          ((t (:background ,terminalgreen-blue-6
                                            :foreground ,terminalgreen-bg+1))))
   `(magit-diff-added                  ((t (:foreground ,terminalgreen-blue-5))))
   `(magit-diff-added-highlight        ((t (:inherit magit-diff-added :weight bold))))
   `(magit-diff-removed                ((t (:foreground ,terminalgreen-magenta))))
   `(magit-diff-removed-highlight      ((t (:inherit magit-diff-removed :weight bold))))
   `(magit-diff-context                ((t (:foreground ,terminalgreen-gray))))
   `(magit-diff-context-highlight      ((t (:inherit magit-diff-context :weight bold))))
   `(magit-diffstat-added   ((t (:inherit magit-diff-added))))
   `(magit-diffstat-removed ((t (:inherit magit-diff-removed))))
   ;; magit popup
   `(magit-popup-heading             ((t (:foreground ,terminalgreen-pink-1  :weight bold))))
   `(magit-popup-key                 ((t (:foreground ,terminalgreen-blue+1 :weight bold))))
   `(magit-popup-argument            ((t (:foreground ,terminalgreen-light-blue-2   :weight bold))))
   `(magit-popup-disabled-argument   ((t (:foreground ,terminalgreen-fg    :weight normal))))
   `(magit-popup-option-value        ((t (:foreground ,terminalgreen-blue-2  :weight bold))))
   ;; ;; magit process
   `(magit-process-ok    ((t (:foreground ,terminalgreen-green+1  :weight bold))))
   `(magit-process-ng    ((t (:foreground ,terminalgreen-pink-2    :weight bold))))
   ;; ;; magit log
   `(magit-log-author    ((t (:foreground ,terminalgreen-pink))))
   `(magit-log-date      ((t (:foreground ,terminalgreen-gray))))
   `(magit-log-graph     ((t (:foreground ,terminalgreen-white-2))))
   ;; ;; magit sequence
   `(magit-sequence-pick ((t (:foreground ,terminalgreen-magenta))))
   `(magit-sequence-stop ((t (:foreground ,terminalgreen-green+1))))
   `(magit-sequence-part ((t (:foreground ,terminalgreen-pink-1))))
   `(magit-sequence-head ((t (:foreground ,terminalgreen-blue+1))))
   `(magit-sequence-drop ((t (:foreground ,terminalgreen-orange))))
   `(magit-sequence-done ((t (:foreground ,terminalgreen-gray-2))))
   `(magit-sequence-onto ((t (:foreground ,terminalgreen-gray-2))))
   ;; ;; magit bisect
   `(magit-bisect-good ((t (:foreground ,terminalgreen-green+1))))
   `(magit-bisect-skip ((t (:foreground ,terminalgreen-pink-1))))
   `(magit-bisect-bad  ((t (:foreground ,terminalgreen-orange))))
   ;; ;; magit blame
   `(magit-blame-heading ((t (:background ,terminalgreen-bg+1 :foreground ,terminalgreen-green))))
   `(magit-blame-hash    ((t (:background ,terminalgreen-bg+1 :foreground ,terminalgreen-green))))
   `(magit-blame-name    ((t (:background ,terminalgreen-bg+1 :foreground ,terminalgreen-pink-1))))
   `(magit-blame-date    ((t (:background ,terminalgreen-bg+1 :foreground ,terminalgreen-yellow-1))))
   `(magit-blame-summary ((t (:background ,terminalgreen-bg+1 :foreground ,terminalgreen-light-blue-2
                                          :weight bold))))
   ;; ;; magit references etc
   `(magit-dimmed         ((t (:foreground ,terminalgreen-bg+3))))
   `(magit-hash           ((t (:foreground ,terminalgreen-bg+1))))
   `(magit-tag            ((t (:foreground ,terminalgreen-pink-1 :weight bold))))
   `(magit-branch-remote  ((t (:foreground ,terminalgreen-green+2  :weight bold))))
   `(magit-branch-local   ((t (:foreground ,terminalgreen-blue+1   :weight bold))))
   `(magit-branch-current ((t (:foreground ,terminalgreen-green   :weight bold :box t))))
   `(magit-head           ((t (:foreground ,terminalgreen-blue   :weight bold))))
   `(magit-refname        ((t (:background ,terminalgreen-bg+2 :foreground ,terminalgreen-fg :weight bold))))
   `(magit-refname-stash  ((t (:background ,terminalgreen-bg+2 :foreground ,terminalgreen-fg :weight bold))))
   `(magit-refname-wip    ((t (:background ,terminalgreen-bg+2 :foreground ,terminalgreen-fg :weight bold))))
   `(magit-signature-good      ((t (:foreground ,terminalgreen-green))))
   `(magit-signature-bad       ((t (:foreground ,terminalgreen-red))))
   `(magit-signature-untrusted ((t (:foreground ,terminalgreen-yellow))))
   `(magit-cherry-unmatched    ((t (:foreground ,terminalgreen-cyan))))
   `(magit-cherry-equivalent   ((t (:foreground ,terminalgreen-magenta))))
   `(magit-reflog-commit       ((t (:foreground ,terminalgreen-green))))
   `(magit-reflog-amend        ((t (:foreground ,terminalgreen-magenta))))
   `(magit-reflog-merge        ((t (:foreground ,terminalgreen-green))))
   `(magit-reflog-checkout     ((t (:foreground ,terminalgreen-blue))))
   `(magit-reflog-reset        ((t (:foreground ,terminalgreen-red))))
   `(magit-reflog-rebase       ((t (:foreground ,terminalgreen-magenta))))
   `(magit-reflog-cherry-pick  ((t (:foreground ,terminalgreen-green))))
   `(magit-reflog-remote       ((t (:foreground ,terminalgreen-cyan))))
   `(magit-reflog-other        ((t (:foreground ,terminalgreen-cyan))))
   
   `(eval-sexp-fu-flash ((,class (:background ,terminalgreen-gray-8 :foreground ,terminalgreen-pink-2))))

   ;; message-mode
   `(message-cited-text ((,class (:inherit font-lock-comment))))
   `(message-header-name ((,class (:foreground ,terminalgreen-blue-5))))
   `(message-header-other ((,class (:foreground ,terminalgreen-green))))
   `(message-header-to ((,class (:foreground ,terminalgreen-pink-1 :weight bold))))
   `(message-header-from ((,class (:foreground ,terminalgreen-yellow :weight bold))))
   `(message-header-cc ((,class (:foreground ,terminalgreen-yellow :weight bold))))
   `(message-header-newsgroups ((,class (:foreground ,terminalgreen-yellow :weight bold))))
   `(message-header-subject ((,class (:foreground ,terminalgreen-orange :weight bold))))
   `(message-header-xheader ((,class (:foreground ,terminalgreen-green))))
   `(message-mml ((,class (:foreground ,terminalgreen-yellow :weight bold))))
   `(message-separator ((,class (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((,class (:foreground ,terminalgreen-orange))))
   `(mew-face-header-from ((,class (:foreground ,terminalgreen-yellow))))
   `(mew-face-header-date ((,class (:foreground ,terminalgreen-green))))
   `(mew-face-header-to ((,class (:foreground ,terminalgreen-red))))
   `(mew-face-header-key ((,class (:foreground ,terminalgreen-green))))
   `(mew-face-header-private ((,class (:foreground ,terminalgreen-green))))
   `(mew-face-header-important ((,class (:foreground ,terminalgreen-blue))))
   `(mew-face-header-marginal ((,class (:foreground ,terminalgreen-fg :weight bold))))
   `(mew-face-header-warning ((,class (:foreground ,terminalgreen-red))))
   `(mew-face-header-xmew ((,class (:foreground ,terminalgreen-green))))
   `(mew-face-header-xmew-bad ((,class (:foreground ,terminalgreen-red))))
   `(mew-face-body-url ((,class (:foreground ,terminalgreen-orange))))
   `(mew-face-body-comment ((,class (:foreground ,terminalgreen-fg :slant italic))))
   `(mew-face-body-cite1 ((,class (:foreground ,terminalgreen-green))))
   `(mew-face-body-cite2 ((,class (:foreground ,terminalgreen-blue))))
   `(mew-face-body-cite3 ((,class (:foreground ,terminalgreen-orange))))
   `(mew-face-body-cite4 ((,class (:foreground ,terminalgreen-yellow))))
   `(mew-face-body-cite5 ((,class (:foreground ,terminalgreen-red))))
   `(mew-face-mark-review ((,class (:foreground ,terminalgreen-blue))))
   `(mew-face-mark-escape ((,class (:foreground ,terminalgreen-green))))
   `(mew-face-mark-delete ((,class (:foreground ,terminalgreen-red))))
   `(mew-face-mark-unlink ((,class (:foreground ,terminalgreen-yellow))))
   `(mew-face-mark-refile ((,class (:foreground ,terminalgreen-green))))
   `(mew-face-mark-unread ((,class (:foreground ,terminalgreen-red-2))))
   `(mew-face-eof-message ((,class (:foreground ,terminalgreen-green))))
   `(mew-face-eof-part ((,class (:foreground ,terminalgreen-yellow))))

   ;; mic-paren
   `(paren-face-match ((,class (:foreground ,terminalgreen-cyan :background ,terminalgreen-bg :weight bold))))
   `(paren-face-mismatch ((,class (:foreground ,terminalgreen-bg :background ,terminalgreen-magenta :weight bold))))
   `(paren-face-no-match ((,class (:foreground ,terminalgreen-bg :background ,terminalgreen-red :weight bold))))

   ;; nav
   `(nav-face-heading ((,class (:foreground ,terminalgreen-yellow))))
   `(nav-face-button-num ((,class (:foreground ,terminalgreen-cyan))))
   `(nav-face-dir ((,class (:foreground ,terminalgreen-green))))
   `(nav-face-hdir ((,class (:foreground ,terminalgreen-red))))
   `(nav-face-file ((,class (:foreground ,terminalgreen-fg))))
   `(nav-face-hfile ((,class (:foreground ,terminalgreen-red-4))))

   ;; mumamo
   `(mumamo-background-chunk-major ((,class (:background ,terminalgreen-black))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,terminalgreen-black))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,terminalgreen-bg+2))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,terminalgreen-bg+3))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,terminalgreen-bg+1))))

   ;; org-mode
   `(org-document-title ((,class (:foreground ,terminalgreen-light-blue :background ,terminalgreen-black :weight bold :height 1.5))))
   `(org-document-info ((,class (:foreground ,terminalgreen-light-blue :background ,terminalgreen-black :weight bold))))
   `(org-document-info-keyword ((,class (:foreground ,terminalgreen-gray-2 :background ,terminalgreen-black))))
   `(org-agenda-date-today
     ((,class (:foreground ,terminalgreen-orange-2 :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:slant italic))))
   `(org-checkbox ((,class (:background ,terminalgreen-gray-2 :foreground ,terminalgreen-black
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,terminalgreen-blue-7 :underline t))))
   `(org-done ((,class (:bold t :weight bold :foreground ,terminalgreen-green
                              :box (:line-width 1 :style none)))))
   `(org-todo ((,class (:bold t :foreground ,terminalgreen-orange :weight bold
                              :box (:line-width 1 :style none)))))
   `(org-level-1 ((,class (:foreground ,terminalgreen-green-4 :height 1.3))))
   `(org-level-2 ((,class (:foreground ,terminalgreen-spring-green-4 :height 1.2))))
   `(org-level-3 ((,class (:foreground ,terminalgreen-forest-green :height 1.1))))
   `(org-level-4 ((,class (:foreground ,terminalgreen-dark-green))))
   `(org-level-5 ((,class (:foreground ,terminalgreen-orange))))
   `(org-level-6 ((,class (:foreground ,terminalgreen-pink))))
   `(org-level-7 ((,class (:foreground ,terminalgreen-green-1))))
   `(org-level-8 ((,class (:foreground ,terminalgreen-blue-1))))
   `(org-link ((,class (:foreground ,terminalgreen-blue-6 :underline t))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-column ((,class (:background ,terminalgreen-yellow-3 :foreground ,terminalgreen-black))))
   `(org-column-title ((,class (:background ,terminalgreen-bg-1 :underline t :weight bold))))
   ;`(org-block ((,class (:foreground ,terminalgreen-fg :background ,terminalgreen-bg-05))))
   `(org-block-begin-line 
     ((,class (:foreground ,terminalgreen-blue
                                        ;:background ,terminalgreen-bg-1
                           )))
     )
  ; `(org-block-background ((,class (:background ,terminalgreen-gray-5))))
   `(org-block-end-line 
     ((,class (:foreground ,terminalgreen-blue
                                        ;:background ,terminalgreen-bg-1
                           )))
     )

   ;; `(org-deadline-announce ((,class (:foreground ,terminalgreen-red-1))))
   ;; `(org-scheduled ((,class (:foreground ,terminalgreen-green+4))))
   ;; `(org-scheduled-previously ((,class (:foreground ,terminalgreen-red-4))))
   ;; `(org-scheduled-today ((,class (:foreground ,terminalgreen-blue+1))))
   ;; `(org-special-keyword ((,class (:foreground ,terminalgreen-yellow-1))))
   ;; `(org-table ((,class (:foreground ,terminalgreen-green+2))))
   ;; `(org-time-grid ((,class (:foreground ,terminalgreen-orange))))
   ;; `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   ;; `(org-warning ((,class (:bold t :foreground ,terminalgreen-red :weight bold :underline nil))))
   ;; `(org-formula ((,class (:foreground ,terminalgreen-yellow-2))))
   ;; `(org-headline-done ((,class (:foreground ,terminalgreen-green+3))))
   ;; `(org-hide ((,class (:foreground ,terminalgreen-bg-1))))

   ;; outline
   `(outline-8 ((,class (:inherit default))))
   `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
   `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
   `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
   `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
   `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
   `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
   `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

   ;; emms
   `(emms-browser-year/genre-face ((,class (:foreground ,terminalgreen-light-blue :height 1.0))))
   `(emms-browser-artist-face ((,class (:foreground ,terminalgreen-pink-1 :height 1.0))))
   `(emms-browser-composer-face ((,class (:foreground ,terminalgreen-light-blue :height 1.0))))
   `(emms-browser-performer-face ((,class (:foreground ,terminalgreen-light-blue :height 1.0))))
   `(emms-browser-album-face ((,class (:foreground ,terminalgreen-yellow :height 1.0))))
   `(emms-browser-track-face ((,class (:foreground ,terminalgreen-blue-5 :height 1.0))))

   ;; Calfw
   `(cfw:face-title ((,class (:foreground ,terminalgreen-pink-1 :weight bold :height 1.8))))
   `(cfw:face-header ((,class (:foreground ,terminalgreen-yellow-5 :weight bold))))
   `(cfw:face-sunday ((,class (:foreground ,terminalgreen-red :weight bold))))
   `(cfw:face-saturday ((,class (:foreground ,terminalgreen-green :weight bold))))
   `(cfw:face-holiday ((,class (:foreground ,terminalgreen-pink-2 :weight bold))))
   `(cfw:face-grid ((,class (:foreground ,terminalgreen-gray-3))))
   `(cfw:face-default-content ((,class (:foreground ,terminalgreen-cyan))))
   `(cfw:face-periods ((,class (:foreground ,terminalgreen-cyan :weight bold))))
   `(cfw:face-day-title ((,class (:foreground ,terminalgreen-fg))))
   `(cfw:face-default-day ((,class (:foreground ,terminalgreen-fg :weight bold))))
   `(cfw:face-annotation ((,class (:foreground ,terminalgreen-gray))))
   `(cfw:face-disable ((,class (:foreground ,terminalgreen-gray-2 :weight bold))))
   `(cfw:face-today-title ((,class (:foreground ,terminalgreen-blue :background ,terminalgreen-magenta))))
   `(cfw:face-today ((,class (:foreground ,terminalgreen-fg :weight bold))))
   `(cfw:face-select ((,class (:background ,terminalgreen-bg+2))))
   `(cfw:face-toolbar ((,class (:background ,terminalgreen-blue-8))))
   `(cfw:face-toolbar-button-off ((,class (:foreground ,terminalgreen-white :background ,terminalgreen-blue-8 :weight bold))))
   `(cfw:face-toolbar-button-on ((,class (:foreground ,terminalgreen-white :background ,terminalgreen-orange-1 :weight bold))))

   ;; racket-mode
   `(racket-keyword-argument-face ((t (:inherit font-lock-constant-face))))
   `(racket-selfeval-face ((t (:inherit font-lock-type-face))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,terminalgreen-red-1))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,terminalgreen-dark-green))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,terminalgreen-pink-1))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,terminalgreen-yellow))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,terminalgreen-green))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,terminalgreen-light-blue))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,terminalgreen-orange))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,terminalgreen-blue-2))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,terminalgreen-gray))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,terminalgreen-white))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,terminalgreen-blue+1))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,terminalgreen-red-4))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,terminalgreen-green))))
   `(rpm-spec-doc-face ((,class (:foreground ,terminalgreen-green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,terminalgreen-red))))
   `(rpm-spec-macro-face ((,class (:foreground ,terminalgreen-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,terminalgreen-red))))
   `(rpm-spec-package-face ((,class (:foreground ,terminalgreen-red))))
   `(rpm-spec-section-face ((,class (:foreground ,terminalgreen-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,terminalgreen-blue))))
   `(rpm-spec-var-face ((,class (:foreground ,terminalgreen-red))))

   ;; rst-mode
   `(rst-level-1-face ((,class (:foreground ,terminalgreen-orange))))
   `(rst-level-2-face ((,class (:foreground ,terminalgreen-green+1))))
   `(rst-level-3-face ((,class (:foreground ,terminalgreen-blue-1))))
   `(rst-level-4-face ((,class (:foreground ,terminalgreen-yellow-2))))
   `(rst-level-5-face ((,class (:foreground ,terminalgreen-cyan))))
   `(rst-level-6-face ((,class (:foreground ,terminalgreen-green-1))))

   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,terminalgreen-red-3 :background ,terminalgreen-black))))
   `(show-paren-match ((,class (:foreground ,terminalgreen-black :background ,terminalgreen-pink-1))))

   `(naeu-green-face ((,class (:foreground ,terminalgreen-green :background ,terminalgreen-black))))
   `(naeu-pink-face ((,class (:foreground ,terminalgreen-pink-1 :background ,terminalgreen-black))))
   `(naeu-blue-face ((,class (:foreground ,terminalgreen-blue-1 :background ,terminalgreen-black))))
   `(naeu-orange-face ((,class (:foreground ,terminalgreen-yellow-1 :background ,terminalgreen-black))))
   `(naeu-red-face ((,class (:foreground ,terminalgreen-orange :background ,terminalgreen-black))))
   `(naeu-grey-face ((,class (:foreground ,terminalgreen-gray-7 :background ,terminalgreen-black))))

   ;; SLIME
   `(slime-repl-inputed-output-face ((,class (:foreground ,terminalgreen-red))))

  ;;; ansi-term
   `(term-color-black ((,class (:foreground ,terminalgreen-bg
                                            :background ,terminalgreen-bg-1))))
   `(term-color-red ((,class (:foreground ,terminalgreen-red-2
                                          :background ,terminalgreen-red-4))))
   `(term-color-green ((,class (:foreground ,terminalgreen-green
                                            :background ,terminalgreen-green+2))))
   `(term-color-yellow ((,class (:foreground ,terminalgreen-orange
                                             :background ,terminalgreen-yellow))))
   `(term-color-blue ((,class (:foreground ,terminalgreen-blue-1
                                           :background ,terminalgreen-light-blue-2))))
   `(term-color-magenta ((,class (:foreground ,terminalgreen-magenta
                                              :background ,terminalgreen-red))))
   `(term-color-cyan ((,class (:foreground ,terminalgreen-cyan
                                           :background ,terminalgreen-blue))))
   `(term-color-white ((,class (:foreground ,terminalgreen-fg
                                            :background ,terminalgreen-bg-1))))
   `(term-default-fg-color ((,class (:inherit term-color-white))))
   `(term-default-bg-color ((,class (:inherit term-color-black))))

   ;; volatile-highlights
   `(vhl/default-face ((,class (:background ,terminalgreen-gray-5))))

   `(undo-tree-visualizer-active-branch-face ((,class (:foreground ,terminalgreen-pink-1 :background ,terminalgreen-black))))

   ;; whitespace-mode
   `(whitespace-space ((,class (:background ,terminalgreen-bg :foreground ,terminalgreen-bg+1))))
   `(whitespace-hspace ((,class (:background ,terminalgreen-bg :foreground ,terminalgreen-bg+1))))
   `(whitespace-tab ((,class (:background ,terminalgreen-bg :foreground ,terminalgreen-red))))
   `(whitespace-newline ((,class (:foreground ,terminalgreen-bg+1))))
   `(whitespace-trailing ((,class (:foreground ,terminalgreen-red :background ,terminalgreen-bg))))
   `(whitespace-line ((,class (:background ,terminalgreen-bg-05 :foreground ,terminalgreen-magenta))))
   `(whitespace-space-before-tab ((,class (:background ,terminalgreen-orange :foreground ,terminalgreen-orange))))
   `(whitespace-indentation ((,class (:background ,terminalgreen-yellow :foreground ,terminalgreen-red))))
   `(whitespace-empty ((,class (:background ,terminalgreen-yellow :foreground ,terminalgreen-red))))
   `(whitespace-space-after-tab ((,class (:background ,terminalgreen-yellow :foreground ,terminalgreen-red))))

   ;; wanderlust
   `(wl-highlight-folder-few-face ((,class (:foreground ,terminalgreen-red-2))))
   `(wl-highlight-folder-many-face ((,class (:foreground ,terminalgreen-red-1))))
   `(wl-highlight-folder-path-face ((,class (:foreground ,terminalgreen-orange))))
   `(wl-highlight-folder-unread-face ((,class (:foreground ,terminalgreen-blue))))
   `(wl-highlight-folder-zero-face ((,class (:foreground ,terminalgreen-fg))))
   `(wl-highlight-folder-unknown-face ((,class (:foreground ,terminalgreen-blue))))
   `(wl-highlight-message-citation-header ((,class (:foreground ,terminalgreen-red-1))))
   `(wl-highlight-message-cited-text-1 ((,class (:foreground ,terminalgreen-red))))
   `(wl-highlight-message-cited-text-2 ((,class (:foreground ,terminalgreen-green+2))))
   `(wl-highlight-message-cited-text-3 ((,class (:foreground ,terminalgreen-blue))))
   `(wl-highlight-message-cited-text-4 ((,class (:foreground ,terminalgreen-blue+1))))
   `(wl-highlight-message-header-contents-face ((,class (:foreground ,terminalgreen-green))))
   `(wl-highlight-message-headers-face ((,class (:foreground ,terminalgreen-red+1))))
   `(wl-highlight-message-important-header-contents ((,class (:foreground ,terminalgreen-green+2))))
   `(wl-highlight-message-header-contents ((,class (:foreground ,terminalgreen-green+1))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,terminalgreen-green+2))))
   `(wl-highlight-message-signature ((,class (:foreground ,terminalgreen-green))))
   `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,terminalgreen-fg))))
   `(wl-highlight-summary-answered-face ((,class (:foreground ,terminalgreen-blue))))
   `(wl-highlight-summary-disposed-face ((,class (:foreground ,terminalgreen-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((,class (:foreground ,terminalgreen-blue))))
   `(wl-highlight-summary-normal-face ((,class (:foreground ,terminalgreen-fg))))
   `(wl-highlight-summary-thread-top-face ((,class (:foreground ,terminalgreen-yellow))))
   `(wl-highlight-thread-indent-face ((,class (:foreground ,terminalgreen-magenta))))
   `(wl-highlight-summary-refiled-face ((,class (:foreground ,terminalgreen-fg))))
   `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold))))

   ;; which-func-mode
   `(which-func ((,class (:foreground ,terminalgreen-green+4))))

  
   ;; yasnippet
   `(yas/field-highlight-face ((,class (:background ,terminalgreen-pink-1 :foreground ,terminalgreen-black))))

   ;; enh-ruby-mode enh-ruby-op-face
   `(enh-ruby-op-face ((,class (:foreground ,terminalgreen-blue-7))))
   `(enh-ruby-heredoc-delimiter-face ((,class (:foreground ,terminalgreen-green+2))))
   `(enh-ruby-string-delimiter-face ((,class (:foreground ,terminalgreen-green+2))))
   `(enh-ruby-regexp-delimiter-face ((,class (:foreground ,terminalgreen-blue-1))))

   ;; yascroll
   `(yascroll:thumb-text-area ((,class (:background ,terminalgreen-bg-1))))
   `(yascroll:thumb-fringe ((,class (:background ,terminalgreen-bg-1 :foreground ,terminalgreen-bg-1))))
   )

  ;;; custom theme variables
  (custom-theme-set-variables
   'terminalgreen
   `(ansi-color-names-vector [,terminalgreen-bg ,terminalgreen-red-2 ,terminalgreen-green ,terminalgreen-orange
                                          ,terminalgreen-blue-1 ,terminalgreen-magenta ,terminalgreen-cyan ,terminalgreen-fg])
   ;; fill-column-indicator
   `(fci-rule-color ,terminalgreen-bg-05)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'terminalgreen)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; terminalgreen-theme.el ends here.
