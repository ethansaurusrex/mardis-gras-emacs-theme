;;; mardis-gras-theme.el

;; Copyright (C) 2023 Ethan Matus

;; Author: Ethan Matus
;; Version: 0.0.1

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

(deftheme Mardi
  "Daquiri not included")

(let ((class '((class color) (min-colors 89)))
      (fg0               "#d6d6d6") ; default fg
      (fg-rg             "fffffff") ;;done region fg, highlight fg, fringe bg
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
      (bg-rg             "#264f78") ;;done region bg
      (bg-hl             "#10387c") ;;done highlight fg
      (bg-err            "#000000") ;;error background
      (bg-cmp            "#1e1e1e") ;;company background
      (bg-headerline     "#242424") ;;header line bg
      (mode-line-bg      "#323232") ;;done
      (mode-line-bg-dark "#1e1e1e") ;;done
      (line-num          "#858585")
      (line-num-current  "#c6c6c6")
      (builtin           "#b57edc") ;;done
      (keyword           "#b0e2ff") ;;done
      (const             "#B57EDC") ;;done
      (comment           "#999999") ;;done
      (doc               "#b0d6f5") ;;done
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
   'Mardi
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
   `(fringe                                   ((,class (:background ,bg-err :foreground ,fg-rg))))
   `(cursor                                   ((,class (:background ,fg-rg))))
   `(isearch                                  ((,class (:inherit bold))))
   `(minibuffer-prompt                        ((,class (:foreground ,fg-mb :weight normal))))
   `(button                                   ((,class (:underline (:color foreground-color :style line) :foreground ,fg-btn)))) 
   `(link                                     ((,class (:inherit button))))
   `(error                                    ((,class (:foreground ,fg-err))))
   `(line-number                              ((,class (:inherit default :foreground ,line-num))))
   `(line-number-current-line                 ((,class (:inherit default :foreground ,line-num-current))))
   `(header-line                              ((,class (:bold nil :foreground ,fg-headerline :background ,bg-headerline))))
   `(shadow                                   ((,class (:foreground ,fg-shdw))))
   
   `(mode-line                                ((,class (:bold nil :foreground ,fg-ml :background ,mode-line-bg))))
   `(mode-line-inactive                       ((,class (:bold nil :foreground ,fg-inact :background ,mode-line-bg-dark))))
   `(mode-line-buffer-id                      ((,class (:foreground ,fg-buff :background nil :weight bold))))
   `(mode-line-highlight                      ((,class (:foreground ,keyword :box nil :weight normal))))
   `(mode-line-emphasis                       ((,class (:foreground ,fg-emph))))

   `(company-tooltip                          ((t (:foreground ,default :background ,bg-cmp))))
   `(company-tooltip-common                   ((t (:foreground ,fg-cmp-tt))))
   `(company-tooltip-selection                ((t (:background ,bg-hl))))

   `(org-level-1                              ((,class (:bold nil :foreground ,func))))
   `(org-level-2                              ((,class (:bold nil :foreground ,var))))
   `(org-level-3                              ((,class (:bold nil :foreground ,keyword))))
   `(org-todo                                 ((,class (:foreground ,func))))
   `(org-headline-done                        ((,class (:foreground ,builtin))))))

;;;autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'Mardi)
(provide 'Mardi-theme)

;;; mardis-gras-theme.el ends here
