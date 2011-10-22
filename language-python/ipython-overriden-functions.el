;; 내가 원하는 동작을 하기 위해 기존 코드 ipython-complete 덮어쓰기
(require 'ipython)

(if (fboundp 'ipython-complete)
    (fmakunbound 'ipython-complete) )

(defun ipython-complete ()
  "Try to complete the python symbol before point. Only knows about the stuff
in the current *Python* session."
  (interactive)
  ;; 추가된 부분 start
  (if (buffer-live-p (get-buffer "*IPython Completions*"))
      (kill-buffer "*IPython Completions*"))
  ;; 추가된 부분 end
  (let* ((ugly-return nil)
         (sep ";")
         (python-process (or (get-buffer-process (current-buffer))
                                        ;XXX hack for .py buffers
                             (get-process py-which-bufname)))
         ;; XXX currently we go backwards to find the beginning of an
         ;; expression part; a more powerful approach in the future might be
         ;; to let ipython have the complete line, so that context can be used
         ;; to do things like filename completion etc.
         (beg (save-excursion (skip-chars-backward "a-z0-9A-Z_./" (point-at-bol))
                              (point))) 
         (end (point))
         (pattern (buffer-substring-no-properties beg end))
         (completions nil)
         (completion-table nil)
         completion
         (comint-preoutput-filter-functions
          (append comint-preoutput-filter-functions 
                  '(ansi-color-filter-apply
                    (lambda (string) 
                      (setq ugly-return (concat ugly-return string))
                      "")))))
    (process-send-string python-process 
                         (format ipython-completion-command-string pattern))
    (accept-process-output python-process)
    (setq completions 
          (split-string (substring ugly-return 0 (position ?\n ugly-return)) sep))
                                        ;(message (format "DEBUG completions: %S" completions))
    (setq completion-table (loop for str in completions
                                 collect (list str nil)))
    (setq completion (try-completion pattern completion-table))
    (cond ((eq completion t))
          ((null completion)
           (message "Can't find completion for \"%s\"" pattern)
           (ding))
          ((not (string= pattern completion))
           (delete-region beg end)
           (insert completion))
          (t
           (message "Making completion list...")
           (with-output-to-temp-buffer "*IPython Completions*"
             (display-completion-list (all-completions pattern completion-table)))
           (message "Making completion list...%s" "done")))))