;;;; made by http://kldp.org/minipage/primewizard

(defun c-set-style-to-vs-compatible()
  (interactive)
  (setq indent-tabs-mode t)
  (c-set-style "stroustrup")
  (setq tab-width 4)
  (indent-region (point-min) (point-max))
  (tabify (point-min) (point-max)) )


(c-add-style "vs" '((indent-tabs-mode . t)
		    (tab-width . 4)
		    (c-basic-offset . 4)
		    (c-comment-only-line-offset . 0)
		    (c-offsets-alist
		     (statement-block-intro . +)
		     (substatement-open . 0)
		     (substatement-label . 0)
		     (label . 0)
		     (statement-cont . +))) )