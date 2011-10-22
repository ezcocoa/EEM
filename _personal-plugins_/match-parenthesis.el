;;;; 출처 : http://kltp.kldp.org/stories.php?story=05/08/03/3210420
;;;; 출처 : http://kldp.org/node/53073#comment-207492

;; 괄호 짝 찾기
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %. (from gnu emacs site)"
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

(defun match-paren2()
  "% command of vi"
  (interactive)
  (let ((char (char-after (point))))
    (cond ((memq char '(?\( ?\{ ?\[))
           (forward-sexp 1)
           (backward-char 1))
          ((memq char '(?\) ?\} ?\]))
           (forward-char 1)
           (backward-sexp 1))
          (t (call-interactively 'self-insert-command)))))


(global-set-key [(?%)] 'match-paren)
