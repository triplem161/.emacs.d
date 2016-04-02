(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-content)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(org-babel-load-file (concat user-emacs-directory "config.org"))

