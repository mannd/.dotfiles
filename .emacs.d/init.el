;;; init.el --- Initialization file for Emacs

;;; Author: David Mann

;;; Commentary:

;; Most of the actual initing happens in ~/.emacs.d/configuration.org

;;; Code:

;; Time Emacs startup.

(defconst emacs-start-time (current-time))
(unless noninteractive
  (message "Loading %s..." load-file-name))

;; Load my literate Emacs configuration.
(setq package-enable-at-startup nil)
(require 'package)

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(require 'org)
(require 'ob-tangle)

(org-babel-load-file "~/.emacs.d/configuration.org")


;; Finish timing the startup.
;; THIS NEEDS TO BE LAST IN init.el.
(when window-system
  (let ((elapsed (float-time (time-subtract (current-time) emacs-start-time))))
    (message "Loading %s...done (%.3fs)" load-file-name elapsed))
  (add-hook 'after-init-hook
	    `(lambda ()
	       (let ((elapsed (float-time (time-subtract (current-time) emacs-start-time))))
		 (message "Loading %s...done (%.3fs) [after-init]" ,load-file-name elapsed))) t))

;;; init end here
