;;; mardis-gras-theme.el

;; Copyright (C) 2025 Ethan Matus

;; Author: Ethan Matus
;; Version: 0.0.0

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <https://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Code:

(deftheme mardis-gras
  "Daquiri not included")

(let ((class '((class color) (min-colors 89)))
      (fg0               "#d6d6d6") ; default fg
      (fg-rg             "#ffffff") ;;done region fg, highlight fg, fringe bg
      (fg-mb             "#4ec9b0") ;;done minibuffer-prompt
      (fg-btn            "#00bcff") ;;done button foreground
      (fg-err            "#ee0000") ;;done error foreground
      (fg-headerline     "#dddddd") ;;header line
      (fg-ml             "#f4f4f4") ;;mode line foreground
      (fg-inact          "#bfc0c4") ;;mode line inactive
      (fg-buff           "#b452cd") ;;mode line buffer id
      (fg-emph           "#34cfff") ;;mode line emphasis
      (fg-cmp-tt         "#ffd700") ;;company tooltip common
      (fg-shdw           "#a8a8a8") ;;shadow
      (bg0               "#000000")
      (bg2               "#1e1e1e") ; company tooltip bg
      (bg3               "#333333")
      (bg4               "#4b474c")
      (bg-rg             "#264f78") ;;done region bg
      (bg-hl             "#10387c") ;;done highlight fg
      (bg-err            "#000000") ;;error background
      (bg-cmp            "#1e1e1e") ;;company background
      (bg-headerline     "#242424") ;;header line bg
      (vc-r              "#a41511")
      (vc-g              "#4a7f00")
      (vc-b              "#207fa1")
      (key2              "#ce9178")
      (key3              "#9cdcfe")
      (accent            "#ffffff")
      (numeric           "#b5cea8")
      (mode-line-bg      "#323232") ;;done
      (mode-line-bg-dark "#1e1e1e") ;;done
      (line-num          "#858585")
      (line-num-current  "#c6c6c6")
      (builtin           "#b57edc") ;;done
      (keyword           "#b0e2ff") ;;done
      (const             "#B57EDC") ;;done
      (comment           "#999999") ;;done
      (doc               "#b0d6f5") ;;done
      (doc-alt           "#888888") ;;
      (func              "#ff6347") ;;done, tomato
      (str               "#66cdaa") ;;done, aquamarine3
      (type              "#6ae4b9") ;;done
      (var               "#eedd82") ;;done, light goldenrod
      (warning           "#dbbe5f") ;;done
      (preproc           "#ff9077") ;;preproc
      
      (org-todo          "#ffc0cb") ;;todo pink

      (regex-bs          "#abab00") ;;done
      (regex-ct          "#e7a59a") ;;done

      (default           "#d6d6d6"))

  (custom-theme-set-faces
   'mardis-gras
   `(default                                  ((,class (:background ,bg0 :foreground ,fg0))))

   `(font-lock-builtin-face                   ((,class (:foreground ,builtin))))
   `(font-lock-comment-face                   ((,class (:foreground ,comment))))
   `(font-lock-negation-char-face             ((,class (:foreground ,const))))
   `(font-lock-reference-face                 ((,class (:foreground ,const))))
   `(font-lock-constant-face                  ((,class (:foreground ,const))))
   `(font-lock-doc-face                       ((,class (:foreground ,doc))))
   `(font-lock-function-name-face             ((,class (:foreground ,func :bold nil))))
   `(font-lock-keyword-face                   ((,class (:bold nil :foreground ,keyword))))
   `(font-lock-string-face                    ((,class (:foreground ,str))))
   `(font-lock-type-face                      ((,class (:foreground ,type ))))
   `(font-lock-variable-name-face             ((,class (:foreground ,var))))
   `(font-lock-warning-face                   ((,class (:foreground ,warning))))
   `(font-lock-preprocessor-face              ((,class (:foreground ,preproc))))
   
   `(font-lock-regexp-grouping-backslash      ((,class (:foreground ,regex-bs :inherit (bold)))))
   `(font-lock-regexp-grouping-construct      ((,class (:foreground ,regex-ct :inherit (bold)))))

   `(region                                   ((,class (:extend t :background ,bg-rg :foreground ,fg-rg))))
   `(secondary-selection                      ((,class (:inherit region))))
   `(highlight                                ((,class (:background ,bg-hl :foreground ,fg-rg :underline t)))) ; link hover
   ;`(hl-line                                  ((,class (:background ,bg3))))
   `(fringe                                   ((,class (:background ,bg-err :foreground ,fg-rg))))
   `(cursor                                   ((,class (:background ,fg-rg))))
   ;`(show-paren-match-face                    ((,class (:background ,warning))))
   ;`(show-paren-match                         ((t (:foreground ,fg3 :background ,bg4 :bold t))))
   ;`(show-paren-mismatch                      ((t (:background ,warning))))
   `(isearch                                  ((,class (:inherit bold))))
   ;`(vertical-border                          ((,class (:foreground "black"))))
   `(minibuffer-prompt                        ((,class (:foreground ,fg-mb :weight normal))))
   `(button                                   ((,class (:underline (:color foreground-color :style line) :foreground ,fg-btn)))) 
   `(link                                     ((,class (:inherit button))))
   `(error                                    ((,class (:foreground ,fg-err))))
   ;`(warning                                  ((,class (:foreground ,))))
   ;`(success                                  ((,class (:foreground ,ms-bluegreen))))
   ;`(dired-directory                          ((t (:inherit (font-lock-keyword-face)))))
   `(line-number                              ((,class (:inherit default :foreground ,line-num))))
   `(line-number-current-line                 ((,class (:inherit default :foreground ,line-num-current))))
   `(header-line                              ((,class (:bold nil :foreground ,fg-headerline :background ,bg-headerline))))
   `(shadow                                   ((,class (:foreground ,fg-shdw))))
   
   `(mode-line                                ((,class (:bold nil :foreground ,fg-ml :background ,mode-line-bg))))
   `(mode-line-inactive                       ((,class (:bold nil :foreground ,fg-inact :background ,mode-line-bg-dark))))
   `(mode-line-buffer-id                      ((,class (:foreground ,fg-buff :background nil :weight bold))))
   `(mode-line-highlight                      ((,class (:foreground ,keyword :box nil :weight normal))))
   `(mode-line-emphasis                       ((,class (:foreground ,fg-emph))))

   `(company-tooltip                          ((,class (:foreground ,default :background ,bg-cmp))))
   `(company-tooltip-common                   ((,class (:foreground ,fg-cmp-tt))))
   `(company-tooltip-selection                ((,class (:background ,bg-hl))))

   `(org-level-1                              ((,class (:bold nil :foreground ,func))))))
   ;`(org-level-2                              ((,class (:bold nil :foreground ,var))))
   ;`(org-level-3                              ((,class (:bold nil :foreground ,keyword))))
   ;`(org-todo                                 ((,class (:foreground ,func))))
   ;`(org-headline-done                        ((,class (:foreground ,builtin))))))

   ;; `(font-latex-bold-face                     ((,class (:foreground ,type))))
   ;; `(font-latex-italic-face                   ((,class (:foreground ,key3 :italic t))))
   ;; `(font-latex-string-face                   ((,class (:foreground ,str))))
   ;; `(font-latex-match-reference-keywords      ((,class (:foreground ,const))))
   ;; `(font-latex-match-variable-keywords       ((,class (:foreground ,var))))

   ;; `(ido-only-match                           ((,class (:foreground ,keyword))))
   ;; `(ido-subdir                               ((,class (:weight normal :foreground ,fg0))))
   ;; `(ido-first-match                          ((,class (:foreground ,keyword :bold nil))))

   ;; `(gnus-header-content                      ((,class (:foreground ,keyword))))
   ;; `(gnus-header-from                         ((,class (:foreground ,var))))
   ;; `(gnus-header-name                         ((,class (:foreground ,type))))
   ;; `(gnus-header-subject                      ((,class (:foreground ,func :bold nil))))

   ;; `(mu4e-view-url-number-face                ((,class (:foreground ,type))))
   ;; `(mu4e-cited-1-face                        ((,class (:foreground ,fg2))))
   ;; `(mu4e-cited-7-face                        ((,class (:foreground ,fg3))))
   ;; `(mu4e-header-marks-face                   ((,class (:foreground ,type))))

   ;; `(ffap                                     ((,class (:foreground ,fg4))))

   ;; `(js2-private-function-call                ((,class (:foreground ,const))))
   ;; `(js2-jsdoc-html-tag-delimiter             ((,class (:foreground ,str))))
   ;; `(js2-jsdoc-html-tag-name                  ((,class (:foreground ,key2))))
   ;; `(js2-external-variable                    ((,class (:foreground ,type  ))))
   ;; `(js2-function-param                       ((,class (:foreground ,const))))
   ;; `(js2-jsdoc-value                          ((,class (:foreground ,str))))
   ;; `(js2-private-member                       ((,class (:foreground ,fg3))))
   ;; `(js2-warning                              ((t (:underline ,warning))))
   ;; `(js2-error                                ((t (:foreground ,warning :weight normal))))
   ;; `(js2-jsdoc-tag                            ((t (:foreground ,var))))
   ;; `(js2-jsdoc-type                           ((t (:foreground ,var))))o
   ;; `(js2-instance-member                      ((t (:foreground ,var))))
   ;; `(js2-object-property                      ((t (:foreground ,func))))
   ;; `(js2-magic-paren                          ((t (:foreground ,const))))
   ;; `(js2-function-call                        ((t (:foreground ,const))))
   ;; `(js2-keywords                             ((t (:foreground ,keyword))))
   ;; `(js3-warning-face                         ((,class (:underline ,keyword))))
   ;; `(js3-error-face                           ((,class (:underline ,warning))))
   ;; `(js3-external-variable-face               ((,class (:foreground ,var))))
   ;; `(js3-function-param-face                  ((,class (:foreground ,key3))))
   ;; `(js3-jsdoc-tag-face                       ((,class (:foreground ,keyword))))
   ;; `(js3-instance-member-face                 ((,class (:foreground ,const))))

   ;; `(ac-completion-face                       ((,class (:underline t :foreground ,keyword))))
   ;; `(info-quoted-name                         ((,class (:foreground ,builtin))))
   ;; `(info-string                              ((,class (:foreground ,str))))
   ;; `(icompletep-determined                    ((,class :foreground ,builtin)))

   ;; `(slime-repl-inputed-output-face           ((,class (:foreground ,type))))
   ;; `(trailing-whitespace                      ((,class :foreground nil :background ,warning)))
   ;; `(lazy-highlight                           ((,class (:background "#613214"))))

   ;; `(undo-tree-visualizer-current-face        ((,class :foreground ,builtin)))
   ;; `(undo-tree-visualizer-default-face        ((,class :foreground ,fg2)))
   ;; `(undo-tree-visualizer-unmodified-face     ((,class :foreground ,var)))
   ;; `(undo-tree-visualizer-register-face       ((,class :foreground ,type)))

   ;; `(rainbow-delimiters-depth-1-face          ((,class :foreground "gold")))
   ;; `(rainbow-delimiters-depth-2-face          ((,class :foreground "orchid")))
   ;; `(rainbow-delimiters-depth-3-face          ((,class :foreground "LightSkyBlue")))
   ;; `(rainbow-delimiters-depth-4-face          ((,class :foreground "gold")))
   ;; `(rainbow-delimiters-depth-5-face          ((,class :foreground "orchid")))
   ;; `(rainbow-delimiters-depth-6-face          ((,class :foreground "LightSkyBlue")))
   ;; `(rainbow-delimiters-depth-7-face          ((,class :foreground "gold")))
   ;; `(rainbow-delimiters-depth-8-face          ((,class :foreground "orchid")))
   ;; `(rainbow-delimiters-depth-9-face          ((,class :foreground "LightSkyBlue")))
   ;; `(rainbow-delimiters-unmatched-face        ((,class :foreground ,warning)))

   ;; `(magit-item-highlight                     ((,class :background ,bg3)))
   ;; `(magit-hunk-heading                       ((,class (:background ,bg3))))
   ;; `(magit-hunk-heading-highlight             ((,class (:background ,bg3))))
   ;; `(magit-bisect-bad                         ((t (:foreground ,ms-red))))
   ;; `(magit-bisect-good                        ((t (:foreground ,ms-green))))
   ;; `(magit-bisect-skip                        ((t (:foreground ,ms-orange))))
   ;; `(magit-blame-date                         ((t (:foreground ,ms-red))))
   ;; `(magit-blame-heading                      ((t (:foreground ,ms-orange :background ,bg3 :extend t))))
   ;; `(magit-branch                             ((,class (:foreground ,ms-blue :weight normal))))
   ;; `(magit-branch-current                     ((t (:foreground ,ms-blue))))
   ;; `(magit-branch-local                       ((t (:foreground ,ms-bluegreen))))
   ;; `(magit-branch-remote                      ((t (:foreground ,ms-green))))
   ;; `(magit-cherry-equivalent                  ((t (:foreground ,ms-magenta))))
   ;; `(magit-cherry-unmatched                   ((t (:foreground ,ms-bluegreen))))
   ;; `(magit-diff-added                         ((t (:foreground ,fg2 :background ,ms-green-bg :extend t))))
   ;; `(magit-diff-added-highlight               ((t (:foreground ,fg3 :background ,ms-green-bghl :extend t))))
   ;; `(magit-diff-removed                       ((t (:foreground ,fg2 :background ,ms-red-bg :extend t))))
   ;; `(magit-diff-removed-highlight             ((t (:foreground ,fg3 :background ,ms-red-bghl :extend t))))
   ;; `(magit-diff-base                          ((t (:foreground ,bg1 :background ,ms-orange :extend t))))
   ;; `(magit-diff-base-highlight                ((t (:foreground ,ms-orange :background ,bg3 :extend t))))
   ;; `(magit-diff-context                       ((t (:foreground ,fg0 :extend t))))
   ;; `(magit-diff-context-highlight             ((,class (:foreground ,fg1 :background ,bg2))))
   ;; `(magit-diff-file-header                   ((,class (:foreground ,fg2 :background ,bg3))))
   ;; `(magit-diff-file-heading                  ((t (:foreground ,fg1 :extend t))))
   ;; `(magit-diff-file-heading-highlight        ((t (:background ,bg3 :extend t))))
   ;; `(magit-diff-file-heading-selection        ((t (:foreground ,ms-orange :background ,bg3 :extend t))))
   ;; `(magit-diff-hunk-heading                  ((t (:foreground ,fg1 :background ,bg3 :extend t))))
   ;; `(magit-diff-hunk-heading-highlight        ((t (:background ,bg3 :extend t))))
   ;; `(magit-diff-lines-heading                 ((t (:foreground ,ms-yellow :background ,ms-red :extend t))))
   ;; `(magit-diffstat-added                     ((t (:foreground ,ms-green))))
   ;; `(magit-diffstat-removed                   ((t (:foreground ,ms-orange))))
   ;; `(magit-dimmed                             ((t (:foreground ,comment))))
   ;; `(magit-filename                           ((t (:foreground ,ms-magenta))))
   ;; `(magit-hash                               ((t (:foreground ,comment))))
   ;; `(magit-header-line                        ((t (:inherit nil))))
   ;; `(magit-log-author                         ((t (:foreground ,ms-orange))))
   ;; `(magit-log-date                           ((t (:foreground ,ms-blue))))
   ;; `(magit-log-graph                          ((t (:foreground ,comment))))
   ;; `(magit-mode-line-process                  ((t (:foreground ,ms-orange))))
   ;; `(magit-mode-line-process-error            ((t (:foreground ,ms-red))))
   ;; `(magit-process-ok                         ((t (:inherit success))))
   ;; `(magit-process-ng                         ((t (:inherit error))))
   ;; `(magit-reflog-amend                       ((t (:foreground ,ms-magenta))))
   ;; `(magit-reflog-checkout                    ((t (:foreground ,ms-blue))))
   ;; `(magit-reflog-cherry-pick                 ((t (:foreground ,ms-green))))
   ;; `(magit-reflog-commit                      ((t (:foreground ,ms-green))))
   ;; `(magit-reflog-merge                       ((t (:foreground ,ms-green))))
   ;; `(magit-reflog-other                       ((t (:foreground ,ms-bluegreen))))
   ;; `(magit-reflog-rebase                      ((t (:foreground ,ms-magenta))))
   ;; `(magit-reflog-remote                      ((t (:foreground ,ms-bluegreen))))
   ;; `(magit-reflog-reset                       ((t (:inherit error))))
   ;; `(magit-refname                            ((t (:foreground ,comment))))
   ;; `(magit-section-heading                    ((t (:foreground ,ms-magenta))))
   ;; `(magit-section-heading-selection          ((t (:foreground ,ms-orange :extend t))))
   ;; `(magit-section-highlight                  ((t (:background ,bg3 :extend t))))
   ;; `(magit-sequence-drop                      ((t (:foreground ,ms-red))))
   ;; `(magit-sequence-head                      ((t (:foreground ,ms-blue))))
   ;; `(magit-sequence-part                      ((t (:foreground ,ms-orange))))
   ;; `(magit-sequence-stop                      ((t (:foreground ,ms-green))))
   ;; `(magit-signature-bad                      ((t (:inherit error))))
   ;; `(magit-signature-error                    ((t (:inherit error))))
   ;; `(magit-signature-expired-key              ((t (:foreground ,ms-orange))))
   ;; `(magit-signature-good                     ((t (:inherit success))))
   ;; `(magit-signature-revoked                  ((t (:foreground ,ms-magenta))))
   ;; `(magit-signature-untrusted                ((t (:foreground ,ms-bluegreen))))
   ;; `(magit-tag                                ((t (:foreground ,ms-yellow))))

   ;; `(git-commit-summary                       ((t (:inherit default)))) ; magit commit message face

   ;; `(term                                     ((,class (:foreground ,fg1 :background ,bg1))))
   ;; `(term-color-black                         ((,class (:foreground ,bg3 :background ,bg3))))
   ;; `(term-color-blue                          ((,class (:foreground ,ms-blue :background ,func))))
   ;; `(term-color-red                           ((,class (:foreground ,ms-red :background ,bg3))))
   ;; `(term-color-green                         ((,class (:foreground ,ms-green :background ,bg3))))
   ;; `(term-color-yellow                        ((,class (:foreground ,ms-yellow :background ,var))))
   ;; `(term-color-magenta                       ((,class (:foreground ,ms-magenta :background ,builtin))))
   ;; `(term-color-cyan                          ((,class (:foreground ,ms-bluegreen :background ,str))))
   ;; `(term-color-white                         ((,class (:foreground ,fg1 :background ,fg2))))

   ;; `(diredfl-autofile-name                    ((t (:foreground ,fg0))))
   ;; `(diredfl-compressed-file-name             ((t (:foreground ,ms-yellow))))
   ;; `(diredfl-compressed-file-suffix           ((t (:foreground ,doc-alt))))
   ;; `(diredfl-date-time                        ((t (:foreground ,ms-bluegreen))))
   ;; `(diredfl-deletion                         ((t (:foreground ,ms-red :bold t))))
   ;; `(diredfl-deletion-file-name               ((t (:foreground ,ms-red ))))
   ;; `(diredfl-dir-heading                      ((t (:foreground ,ms-blue :bold t))))
   ;; `(diredfl-dir-name                         ((t (:foreground ,ms-blue))))
   ;; `(diredfl-dir-priv                         ((t (:foreground ,ms-blue))))
   ;; `(diredfl-exec-priv                        ((t (:foreground ,ms-green))))
   ;; `(diredfl-executable-tag                   ((t (:foreground ,ms-green))))
   ;; `(diredfl-file-name                        ((t (:foreground ,fg1))))
   ;; `(diredfl-file-suffix                      ((t (:foreground ,doc-alt))))
   ;; `(diredfl-flag-mark                        ((t (:foreground ,ms-yellow :bold t))))
   ;; `(diredfl-ignored-file-name                ((t (:foreground ,doc-alt))))
   ;; `(diredfl-link-priv                        ((t (:foreground ,ms-magenta))))
   ;; `(diredfl-no-priv                          ((t (:foreground ,fg1))))
   ;; `(diredfl-number                           ((t (:foreground ,ms-orange))))
   ;; `(diredfl-other-priv                       ((t (:foreground ,ms-magenta))))
   ;; `(diredfl-rare-priv                        ((t (:foreground ,fg1))))
   ;; `(diredfl-read-priv                        ((t (:foreground ,ms-yellow))))
   ;; `(diredfl-symlink                          ((t (:foreground ,ms-magenta))))
   ;; `(diredfl-tagged-autofile-name             ((t (:foreground ,fg0))))
   ;; `(diredfl-write-priv                       ((t (:foreground ,ms-red))))

   ;; `(helm-header                              ((,class (:foreground ,fg2 :background ,bg1 :underline nil :box nil))))
   ;; `(helm-source-header                       ((,class (:foreground ,keyword :background ,bg1 :underline nil :weight normal))))
   ;; `(helm-selection                           ((,class (:background ,bg-hl :underline nil :extend t))))
   ;; `(helm-selection-line                      ((,class (:background ,bg-hl :extend t))))
   ;; `(helm-visible-mark                        ((,class (:foreground ,bg1 :background ,bg3))))
   ;; `(helm-candidate-number                    ((,class (:foreground ,bg1 :background ,fg1))))
   ;; `(helm-separator                           ((,class (:foreground ,type :background ,bg1))))
   ;; `(helm-time-zone-current                   ((,class (:foreground ,builtin :background ,bg1))))
   ;; `(helm-time-zone-home                      ((,class (:foreground ,type :background ,bg1))))
   ;; `(helm-buffer-not-saved                    ((,class (:foreground ,type :background ,bg1))))
   ;; `(helm-buffer-process                      ((,class (:foreground ,builtin :background ,bg1))))
   ;; `(helm-buffer-saved-out                    ((,class (:foreground ,fg1 :background ,bg1))))
   ;; `(helm-buffer-size                         ((,class (:foreground ,fg1 :background ,bg1))))
   ;; `(helm-ff-directory                        ((,class (:foreground ,func :background ,bg1 :weight normal))))
   ;; `(helm-ff-file                             ((,class (:foreground ,fg1 :background ,bg1 :weight normal))))
   ;; `(helm-ff-executable                       ((,class (:foreground ,key2 :background ,bg1 :weight normal))))
   ;; `(helm-ff-invalid-symlink                  ((,class (:foreground ,key3 :background ,bg1 :weight normal))))
   ;; `(helm-ff-symlink                          ((,class (:foreground ,keyword :background ,bg1 :weight normal))))
   ;; `(helm-ff-prefix                           ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
   ;; `(helm-grep-cmd-line                       ((,class (:foreground ,fg1 :background ,bg1))))
   ;; `(helm-grep-file                           ((,class (:foreground ,fg1 :background ,bg1))))
   ;; `(helm-grep-finish                         ((,class (:foreground ,fg2 :background ,bg1))))
   ;; `(helm-grep-lineno                         ((,class (:foreground ,fg1 :background ,bg1))))
   ;; `(helm-grep-match                          ((,class (:foreground nil :background nil :inherit helm-match))))
   ;; `(helm-grep-running                        ((,class (:foreground ,func :background ,bg1))))
   ;; `(helm-moccur-buffer                       ((,class (:foreground ,func :background ,bg1))))
   ;; `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
   ;; `(helm-bookmark-w3m                        ((,class (:foreground ,type))))

   ;; `(web-mode-html-tag-bracket-face           ((,class (:foreground "#808080"))))
   ;; `(web-mode-html-tag-face                   ((,class (:foreground ,keyword))))
   ;; `(web-mode-html-attr-name-face             ((,class (:foreground ,var))))
   ;; `(web-mode-html-attr-value-face            ((,class (:foreground ,str))))
   ;; `(web-mode-html-attr-equal-face            ((,class (:foreground ,fg1))))
   ;; `(web-mode-builtin-face                    ((,class (:inherit ,font-lock-builtin-face))))
   ;; `(web-mode-comment-face                    ((,class (:inherit ,font-lock-comment-face))))
   ;; `(web-mode-constant-face                   ((,class (:inherit ,font-lock-constant-face))))
   ;; `(web-mode-keyword-face                    ((,class (:foreground ,keyword))))
   ;; `(web-mode-doctype-face                    ((,class (:inherit ,font-lock-doc-face))))
   ;; `(web-mode-function-name-face              ((,class (:inherit ,font-lock-function-name-face))))
   ;; `(web-mode-string-face                     ((,class (:foreground ,str))))
   ;; `(web-mode-type-face                       ((,class (:inherit ,font-lock-type-face))))
   ;; `(web-mode-warning-face                    ((,class (:inherit ,font-lock-warning-face))))
   ;; `(web-mode-json-key-face                   ((,class (:foreground ,str))))
   ;; `(web-mode-json-context-face               ((,class (:foreground ,str))))

   ;; `(diff-header                              ((t (:foreground ,ms-bluegreen :background nil))))
   ;; `(diff-file-header                         ((t (:foreground ,fg3 :background nil))))
   ;; `(diff-hunk-header                         ((t (:foreground ,fg4 :background ,bg3))))
   ;; `(diff-added                               ((t (:foreground ,fg2 :background ,ms-green-bg))))
   ;; `(diff-removed                             ((t (:foreground ,fg2 :background ,ms-red-bg))))
   ;; `(diff-changed                             ((t (:foreground ,fg2 :background ,ms-blue-bg))))
   ;; `(diff-refine-added                        ((t (:foreground ,fg3 :background ,ms-green-bghl))))
   ;; `(diff-refine-removed                      ((t (:foreground ,fg3 :background ,ms-red-bghl))))
   ;; `(diff-refine-changed                      ((t (:foreground ,fg3 :background ,ms-blue-bghl))))

   ;; `(ediff-fine-diff-Ancestor                 ((t (:background ,ms-red-bghl))))
   ;; `(ediff-fine-diff-A                        ((t (:background ,ms-red-bghl))))
   ;; `(ediff-fine-diff-B                        ((t (:background ,ms-green-bghl))))
   ;; `(ediff-fine-diff-C                        ((t (:background ,ms-blue-bghl))))
   ;; `(ediff-current-diff-Ancestor              ((t (:background ,ms-red-bg))))
   ;; `(ediff-current-diff-A                     ((t (:background ,ms-red-bg))))
   ;; `(ediff-current-diff-B                     ((t (:background ,ms-green-bg))))
   ;; `(ediff-current-diff-C                     ((t (:background ,ms-blue-bg))))
   ;; `(ediff-even-diff-Ancestor                 ((t (:background ,bg3))))
   ;; `(ediff-even-diff-A                        ((t (:background ,bg3))))
   ;; `(ediff-even-diff-B                        ((t (:background ,bg3))))
   ;; `(ediff-even-diff-C                        ((t (:background ,bg3))))
   ;; `(ediff-odd-diff-Ancestor                  ((t (:background ,bg3))))
   ;; `(ediff-odd-diff-A                         ((t (:background ,bg3))))
   ;; `(ediff-odd-diff-B                         ((t (:background ,bg3))))
   ;; `(ediff-odd-diff-C                         ((t (:background ,bg3))))

   ;; `(jde-java-font-lock-package-face          ((t (:foreground ,var))))
   ;; `(jde-java-font-lock-public-face           ((t (:foreground ,keyword))))
   ;; `(jde-java-font-lock-private-face          ((t (:foreground ,keyword))))
   ;; `(jde-java-font-lock-constant-face         ((t (:foreground ,const))))
   ;; `(jde-java-font-lock-modifier-face         ((t (:foreground ,key3))))
   ;; `(jde-jave-font-lock-protected-face        ((t (:foreground ,keyword))))
   ;; `(jde-java-font-lock-number-face           ((t (:foreground ,numeric))))

   ;; `(centaur-tabs-default                     ((t (:background ,bg1 :foreground ,fg1))))
   ;; `(centaur-tabs-selected                    ((t (:background ,bg1 :foreground ,fg3 :box nil))))
   ;; `(centaur-tabs-unselected                  ((t (:background ,bg2 :foreground ,fg0 :box nil))))
   ;; `(centaur-tabs-selected-modified           ((t (:background ,bg2 :foreground ,accent :box nil))))
   ;; `(centaur-tabs-unselected-modified         ((t (:background ,bg2 :foreground ,fg4 :box nil))))
   ;; `(centaur-tabs-active-bar-face             ((t (:background ,accent :box nil))))
   ;; `(centaur-tabs-modified-marker-selected    ((t (:inherit 'centaur-tabs-selected-modified :foreground ,accent :box nil))))
   ;; `(centaur-tabs-modified-marker-unselected  ((t (:inherit 'centaur-tabs-unselected-modified :foreground ,accent :box nil))))

   ;; `(solaire-default-face                     ((t (:inherit default :background ,bg2))))
   ;; `(solaire-minibuffer-face                  ((t (:inherit default :background ,bg2))))
   ;; `(solaire-hl-line-face                     ((t (:inherit hl-line :background ,bg3))))
   ;; `(solaire-org-hide-face                    ((t (:inherit org-hide :background ,bg2))))

   ;; `(ivy-confirm-face                         ((t (:inherit minibuffer-prompt :foreground ,keyword))))
   ;; `(ivy-current-match                        ((t (:background ,bg-hl :extend t))))
   ;; `(ivy-highlight-face                       ((t (:inherit font-lock-builtin-face))))
   ;; `(ivy-match-required-face                  ((t (:inherit minibuffer-prompt :foreground ,warning))))
   ;; `(ivy-minibuffer-match-face-1              ((t (:inherit isearch))))
   ;; `(ivy-minibuffer-match-face-2              ((t (:inherit ivy-minibuffer-match-face-1))))
   ;; `(ivy-minibuffer-match-face-3              ((t (:inherit ivy-minibuffer-match-face-2))))
   ;; `(ivy-minibuffer-match-face-4              ((t (:inherit ivy-minibuffer-match-face-2))))
   ;; `(ivy-minibuffer-match-highlight           ((t (:inherit ivy-current-match))))
   ;; `(ivy-modified-buffer                      ((t (:inherit default :foreground ,var))))
   ;; `(Ivy-virtual                              ((t (:inherit default :foreground ,doc-alt))))
   ;; `(ivy-posframe                             ((t (:background "#252526"))))

   ;; `(counsel-key-binding                      ((t (:foreground ,var))))

   ;; `(swiper-match-face-1                      ((t (:inherit ivy-minibuffer-match-face-1))))
   ;; `(swiper-match-face-2                      ((t (:inherit ivy-minibuffer-match-face-2))))
   ;; `(swiper-match-face-3                      ((t (:inherit ivy-minibuffer-match-face-3))))
   ;; `(swiper-match-face-4                      ((t (:inherit ivy-minibuffer-match-face-4))))
   ;; `(swiper-line-face                         ((t (:foreground ,fg0 :background ,bg4 :extend t))))

   ;; `(git-gutter:added                         ((t (:foreground ,vc-g :weight normal))))
   ;; `(git-gutter:deleted                       ((t (:foreground ,vc-r :weight normal))))
   ;; `(git-gutter:modified                      ((t (:foreground ,vc-b :weight normal))))
   ;; `(git-gutter-fr:added                      ((t (:foreground ,vc-g :weight normal))))
   ;; `(git-gutter-fr:deleted                    ((t (:foreground ,vc-r :weight normal))))
   ;; `(git-gutter-fr:modified                   ((t (:foreground ,vc-b :weight normal))))

   ;; `(diff-hl-insert                           ((t (:background ,vc-g :foreground ,vc-g))))
   ;; `(diff-hl-delete                           ((t (:background ,vc-r :foreground ,vc-r))))
   ;; `(diff-hl-change                           ((t (:background ,vc-b :foreground ,vc-b))))

   ;; `(neo-dir-link-face                        ((t (:foreground "#cccccc"))))
   ;; `(neo-header-face                          ((t (:foreground "#cccccc"))))
   ;; `(neo-banner-face                          ((t (:foreground "#cccccc"))))
   ;; `(neo-root-dir-face                        ((t (:foreground "#cccccc"))))
   ;; `(neo-file-link-face                       ((t (:foreground "#cccccc"))))
   ;; `(neo-expand-btn-face                      ((t (:foreground "#cccccc"))))

   ;; `(sml/global                               ((t (:foreground ,fg2 :weight normal))))
   ;; `(sml/filename                             ((t (:foreground ,fg2 :weight normal))))
   ;; `(sml/line-number                          ((t (:foreground ,fg2 :weight normal))))
   ;; `(sml/prefix                               ((t (:foreground ,fg2 :weight normal))))
   ;; `(sml/read-only                            ((t (:foreground ,fg2 :weight normal))))
   ;; `(sml/modes                                ((t (:foreground ,fg2 :weight normal))))
   ;; `(sml/modified                             ((t (:foreground ,accent :weight bold))))
   ;; `(sml/charging                             ((t (:foreground ,ms-green :weight normal))))

   ;; `(evil-ex-substitute-matches               ((t (:foreground ,warning :weight normal :strike-through t))))
   ;; `(evil-ex-substitute-replacement           ((t (:foreground ,ms-bluegreen :weight normal))))

   ;; `(hl-todo                                  ((t ,@(when vscode-dark-plus-invert-hl-todo (list :inverse-video t)))))
   ;; `(highlight-numbers-number                 ((t (:foreground ,numeric))))
   ;; `(highlight-operators-face                 ((t (:inherit default))))
   ;; `(highlight-symbol-face                    ((t (:background "#343a40"))))

   ;; `(window-divider                           ((t (:foreground "gray40"))))
   ;; `(window-divider-last-pixel                ((t (:foreground "gray20"))))
   ;; `(window-divider-first-pixel               ((t (:foreground "gray60"))))

   ;; `(tree-sitter-hl-face:method.call          ((t (:inherit font-lock-function-name-face))))
   ;; `(tree-sitter-hl-face:function.call        ((t (:inherit font-lock-function-name-face))))
   ;; `(tree-sitter-hl-face:operator             ((t (:inherit default))))
   ;; `(tree-sitter-hl-face:constant.builtin     ((t (:inherit font-lock-constant-face))))
   ;; `(tree-sitter-hl-face:number               ((t (:inherit highlight-numbers-number))))
   ;; `(tree-sitter-hl-face:variable.special     ((t (:inherit font-lock-keyword-face))))
   ;; `(tree-sitter-hl-face:keyword              ((t (:foreground ,ms-magenta))))

   ;; `(lsp-ui-doc-background                    ((t (:background ,bg2))))

   ;; `(font-latex-bold-face                     ((t (:inherit bold))))
   ;; `(font-latex-italic-face                   ((t (:inherit italic))))
   ;; `(font-latex-math-face                     ((t (:foreground ,ms-blue))))
   ;; `(font-latex-sectioning-0-face             ((t (:foreground ,ms-blue))))
   ;; `(font-latex-sectioning-1-face             ((t (:foreground ,ms-magenta))))
   ;; `(font-latex-sectioning-2-face             ((t (:foreground ,ms-lightorange))))
   ;; `(font-latex-sectioning-3-face             ((t (:foreground ,ms-lightblue))))
   ;; `(font-latex-sectioning-4-face             ((t (:foreground ,ms-lightred))))
   ;; `(font-latex-sectioning-5-face             ((t (:foreground ,ms-lightgreen))))
   ;; `(font-latex-script-char-face              ((t (:foreground ,ms-blue))))
   ;; `(font-latex-string-face                   ((t (:inherit font-lock-string-face))))
   ;; `(font-latex-warning-face                  ((t (:inherit font-lock-warning-face))))
   ;; `(font-latex-verbatim-face                 ((t (:inherit org-verbatim))))
   ;; `(TeX-error-description-error              ((t (:inherit error :bold t))))
   ;; `(TeX-error-description-warning            ((t (:inherit warning :bold t))))
   ;; `(TeX-error-description-tex-said           ((t (:inherit success :bold t))))

   ;; `(tab-bar-tab-inactive                     ((t (:background "#2D2D2D" :foreground ,fg0))))
   ;; `(tab-bar-tab                              ((t (:background ,bg1 :foreground ,accent))))
   ;; `(tab-line                                 ((t (:background ,bg2))))
					       ;; `(tab-bar                                  ((t (:background ,bg1)))))

;;;autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'mardis-gras)
(provide 'mardis-gras-theme)

;;; mardis-gras-theme.el ends here
