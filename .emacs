;;; package.el related code
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(mapc (lambda (package)
        (or (package-installed-p package)
            (package-install package)))
      '(emmet-mode markdown-mode php-mode web-mode yaml-mode))
;;; End package.el related code

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

(add-to-list 'auto-mode-alist '("\\.sls\\'" . yaml-mode))
