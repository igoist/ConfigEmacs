;;; packages.el --- zola-ui layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Zola Zhou <zolazhou@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `zola-ui-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `zola-ui/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `zola-ui/pre-init-PACKAGE' and/or
;;   `zola-ui/post-init-PACKAGE' to customize the package as it is loaded.

(defconst zola-ui-packages
  '(all-the-icons
    doom-themes
    solaire-mode
    (zenburn-theme :location local)))

(defun zola-ui/init-all-the-icons ()
  (use-package all-the-icons
    :config
    nil))

(defun zola-ui/init-doom-themes ()
  (use-package doom-themes
    :config
    (progn
      ;; Global settings (defaults)
      (setq doom-themes-enable-bold t
            doom-themes-enable-italic t
            doom-neotree-enable-variable-pitch t
            doom-neotree-file-icons 'simple
            doom-neotree-line-spacing 2))))

      ;; (load-theme 'doom-one t)

      ;; Enable custom neotree theme
      ;;(doom-themes-neotree-config))))

(defun zola-ui/init-solaire-mode ()
  (use-package solaire-mode
    :config
    (progn
      ;; brighten buffers (that represent real files)
      (add-hook 'after-change-major-mode-hook #'turn-on-solaire-mode)
      ;; ...if you use auto-revert-mode:
      (add-hook 'after-revert-hook #'turn-on-solaire-mode)
      ;; You can do similar with the minibuffer when it is activated:
      (add-hook 'minibuffer-setup-hook #'solaire-mode-in-minibuffer)
      ;; To enable solaire-mode unconditionally for certain modes:
      (add-hook 'ediff-prepare-buffer-hook #'solaire-mode)
      )))

(defun zola-ui/init-zenburn-theme ()
  (use-package zenburn-theme
    :init
    :config
    nil))

;;; packages.el ends here
