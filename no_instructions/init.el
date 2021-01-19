; Let's initialize things... nicely...
(global-font-lock-mode t)
(delete-selection-mode t)
(column-number-mode t)
(line-number-mode t)
(xterm-mouse-mode t)

(setq verilog-mode-hook '(lambda ()
                           ;; User specifications
                           (setq verilog-auto-newline nil
                                 verilog-auto-endcomments t)
                           (font-lock-mode 1)
                           (font-lock-fontify-buffer)
                           (setq indent-tabs-mode nil)))

(setq frame-title-format "%b")

(setq-default indent-tabs-mode nil)
(setq-default verilog-auto-newline nil)
(setq-default verilog-case-indent 2)
(setq-default verilog-cexp-indent 2)
; (setq-default verilog-highlight-grouping-keywords t)
; (setq-default verilog-highlight-modules t)
(setq-default verilog-indent-level 2)
(setq-default verilog-indent-level-behavioral 2)
(setq-default verilog-indent-level-declaration 2)
(setq-default verilog-indent-level-module 2)
