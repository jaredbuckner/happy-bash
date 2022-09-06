; Let's initialize things... nicely...
(column-number-mode t)
(delete-selection-mode t)
(global-font-lock-mode t)
(line-number-mode t)
(show-paren-mode t)
(xterm-mouse-mode t)

; (require 'package)
; (add-to-list 'package-archives
;              '("melpa" . "https://melpa.org/packages/") t)
; (package-initialize)
; (package-refresh-contents)

(require 'rust-mode 'nil 't)

(setq-default case-fold-search t)
(setq-default colon-double-space t)
(setq-default fill-column 79)
(setq-default frame-title-format "%b - emacs")
(setq-default indent-tabs-mode nil)
(setq-default isearch-highlight t)
(setq-default next-line-add-newlines nil)
(setq-default search-highlight t)
; (setq-default show-paren-mode t)

(setq verilog-mode-hook '(lambda ()
                           ;; User specifications
                           (setq verilog-auto-newline nil
                                 verilog-auto-endcomments t)
                           (font-lock-mode 1)
                           (font-lock-fontify-buffer)
                           (setq indent-tabs-mode nil)))


(setq-default verilog-auto-newline nil)
(setq-default verilog-case-indent 2)
(setq-default verilog-cexp-indent 2)
; (setq-default verilog-highlight-grouping-keywords t)
; (setq-default verilog-highlight-modules t)
(setq-default verilog-indent-level 2)
(setq-default verilog-indent-level-behavioral 2)
(setq-default verilog-indent-level-declaration 2)
(setq-default verilog-indent-level-module 2)
