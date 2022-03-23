(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(org-babel-load-file (concat user-emacs-directory "config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ledger-reports
   '(("unbudgeted" "\"C:/Programming/Ledger/ledger.exe\" -f \"g:/Mon Drive/Comptability/main.journal\" --period \"2022-3\" reg --unbudgeted")
     ("budget" "\"C:/Programming/Ledger/ledger.exe\" -f \"g:/Mon Drive/Comptability/main.journal\" --period \"2022-3\" budget")
     ("bal" "%(binary) -f %(ledger-file) bal")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)")))
 '(lsp-pyls-server-command '("poetry run pyls"))
 '(package-selected-packages
   '(ledger-mode dart-lsp dart-mode org-jira forge poetry lsp-mode lua-mode yaml-mode zenburn-theme yasnippet-snippets wgrep web-mode use-package undo-tree smex shader-mode restclient rainbow-mode plantuml-mode omnisharp move-text magit google-this emmet-mode elpy dsvn counsel avy-zap)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
