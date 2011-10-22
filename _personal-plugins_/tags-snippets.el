;;;; made by http://kldp.org/minipage/primewizard

(defconst etags-command "find . -regex \".*\.[hHcC][hHcCpPxX]*$\" -print0 | xargs -0 etags")
(defconst ebrowse-command "find . -regex \".*\.[hHcC][hHcCpPxX]*$\" -print0 | xargs -0 ebrowse")


(defun make-etags-file (dirname)
  (interactive "DDirectory to make etags file(TAGS): ")
  (cd dirname)
  (shell-command etags-command) )

(defun make-ebrowse-file (dirname)
  (interactive "DDirectory to make etags file(BROWSE): ")
  (cd dirname)
  (shell-command ebrowse-command) )


(defun visit-ebrowse-file (dirname)
  (interactive "DDirectory to find ebrowse file(BROWSE): ")
  (let* ((slash
	 (if (equal (car (string-to-list "/"))
		    (car (reverse (string-to-list dirname ))))
	     ""
	   "/" )  )
	(fullpath (format "%s%sBROWSE" dirname slash)))
  (cd dirname)
  (if (file-exists-p fullpath)
      (find-file-noselect fullpath)
    (error "%s does not exist" fullpath)) )  )


(global-set-key [(meta F)] 'visit-tags-table)
;;(global-set-key [(control c)(meta F)] 'visit-tags-table)
(global-set-key [(meta S)] 'tags-search)
;;(global-set-key [(control c)(meta S)] 'tags-search)
(global-set-key [(meta M)] 'make-etags-file)

(global-set-key [(control c)(?\r)(control meta f)] 'visit-ebrowse-file)
(global-set-key [(control c)(?\r)(control meta m)] 'make-ebrowse-file)
