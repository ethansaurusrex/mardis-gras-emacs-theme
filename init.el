;;; init.el -- Entry point of my emacs configuration

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'load-path (expand-file-name "~/.emacs.d/packages"))
(add-hook 'after-init-hook 'global-company-mode)

(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")))
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/") t)
;;(add-to-list 'package-archives (cons "elpa" "https://elpa.gnu.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(load-theme 'mardis-gras t)

;; Line number mode
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
(put 'upcase-region 'disabled nil)

;; Fix scrolling
;;(setq scroll-conservatively most-positive-fixnum)
;;(setq scroll-margin 1)

;;(with-eval-after-load 'package (add-to-list 'package-archives '("nong;;nu" . "https://elpa.nongnu.org/nongnu/")))

;;;; llvm mode
(require 'llvm-mode)

;;;; eglot mode

(require 'project) ;; dependency for eglot
;;(use-package eglot)
(setq lsp-enable-semantic-highlighting nil)


;;;; ORG_MODE
;; Org-Mode timestamp commands
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
;; Agenda-files
(setq org-agenda-files (list "~/org/school.org" ))

;;;; COMPANY MODE
(setq company-idle-delay 0)

;;;; TEXT MACROS

;; Shift the selected region right if distance is postive, left if
;; negative

(defun shift-region (distance)
  (let ((mark (mark)))
    (save-excursion
      (indent-rigidly (region-beginning) (region-end) distance)
      (push-mark mark t t)
      ;; Tell the command loop not to deactivate the mark
      ;; for transient mark mode
      (setq deactivate-mark nil))))

(defun shift-right ()
  (interactive)
  (shift-region 1))

(defun shift-left ()
  (interactive)
  (shift-region -1))

;; Bind (shift-right) and (shift-left) function to your favorite keys. I use
;; the following so that Ctrl-Shift-Right Arrow moves selected text one 
;; column to the right, Ctrl-Shift-Left Arrow moves selected text one
;; column to the left:

(global-set-key [S-right] 'shift-right)
(global-set-key [S-left] 'shift-left)


;; C Switch Indent
(c-set-offset 'case-label '+)


;;;; BOILER_PLATES
;; python
(defun newpython ()
  "Insert a template for an empty Python script"
  (interactive)
  (insert "#!/usr/bin/env python3\n"
          "\n"
          "\n"
          "\n"
          "if __name__ == '__main__':\n"
          "\n"
          )
  (forward-line -4)
  )
;; org
(defun neworg ()
  "Insert a template for an empty Org doc"
  (interactive)
  (insert "* Helpful commands\n"
	  "** C-c C-t -> org-todo OR TODO\n"
	  "** M-Shift-RET -> org-insert-todo-heading\n"
	  "** C-c C-o -> org-open-at-point, opens link\n"
	  "** C-c l -> copies emacs link to file\n"
	  "** C-c C-l -> org-insert-link, stores link to file\n"
	  "** Shift-TAB -> document overview, press twice\n"
	  "** C-c a t -> open global todo list\n"
	  "*** 't' to mark DONE, 'RET' to jump to src\n"
	  "** C-c C-s -> org-schedule, place cursor after line \n"
	  "**C-c a a -> org-agenda, display week's scheduled items\n"
	  "*** 'l' to turn on log display\n"
	  )
  (forward-line -4)
  )
;; sh
(defun newsh ()
  "Insert a template for an empty sh doc"
  (interactive)
  (insert "#! /usr/bin/env bash\n"
	  )
  (forward-line -1)
  )
;; .h file (c/c++)
(defun newheader (hn)
  "Insert a template for an empty sh doc"
  (interactive "sEnter head name: ")
  (message "Header name: %s" hn)
  (insert "#IFNDEF __"
	  hn
	  "__\n"
	  "#DEFINE __"
	  hn
	  "__\n"
	  "\n\n\n"
	  "#ENDIF __"
	  hn
	  "__\n"
	  )
  (backward-line 3)
  )

(defun c-add-loop (start end)
  "Insert a for loop inend c code"
  (interactive "sEnter start: \nsEnter end:")
  (message "start: %s end: %s" start end)
  (insert "for( "
	  start
	  " = 0; "
	  start
	  " < "
	  end
	  "; "
	  start
	  "++ ) {\n"
	  "    //fill in\n}"
	  )
  (forward-line -1)
  )


;; HOOKS
;; python hook
(add-hook 'python-mode-hook
	  (lambda ()
	    (if (= (buffer-size) 0)
		(newpython))
	    (message "python hook")
	    ))
;; org hook
(add-hook 'org-mode-hook
	  (lambda ()
	    (if (= (buffer-size) 0)
		(neworg))
	    (message "org hook")
	    ))

;;bash hook
(add-hook 'sh-mode-hook
	  (lambda ()
	    (if (= (buffer-size) 0)
		(newsh))
	    (message "sh hook")
	    ))
(put 'narrow-to-region 'disabled nil)
(put 'erase-buffer 'disabled nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d25a70da8782162a31e415925358eb10f1cc76184f152b343f2a9cd8674c265c" "dd01c0b980dbc0a7f86b5072a4101bb773ac41c41c61b6d2105a71b43d5ba046" "74045b74f93c01b68535bec486f9561ae514b59b1700f6cada8b8ab9a2fb18af" "4407dbcfd05c179445028c5255a84d48703bf02de2634054bc2457e9f10c654a" "24845c44ecb17b0e3cc36a933e66a852b44881175efa488e06bbe0820ebd9d06" "c3f978c7cd08a8843b9782b2a499d5b9e548af8c1f298ef5a1e04a37e5729635" "b4f6184f7a4e5696a05aef4e6717e30e8e6f6b2f9cccec7ab5888561f6968dbd" "0eadbaed3189d795a1fb5a0cfd7f309c335679d08ee96c5978c958b1730b4ca7" "ea3adaba0a52fede0a03490e73760a74053be77d7ceef6d77edd73a1646b6c09" "9e6f9348dbbaa96ab5160f78fda3d238fc6fe3d15ff0a36da462e41401729d2c" "a47dd1d5ef1fea4da89fbea1d276d5c090afad68426074b8c81b88f2a8e44e97" "06ed535b2fc26dddc364c0db5393ff0da464a34bbf95ced403ec002d2ee4e8de" "f2df03550337ff566699afe3e12c5cb2b4d3e7f9a43387fdd70b06cb8f46eaef" default))
 '(package-selected-packages
   '(clang-format lsp-mode ## company conda dracula-theme tuareg)))
