;; * Collection of Emacs Development Environment Tools
;; cvs 저장소에 있는 것이 C++ namespace 문제가 없다고 하여... 자동완성 성능도 괜찮은 것 같음
(load "~/.emacs.d/cedet-supports/cedet-cvs")
;;(load-file "~/.emacs.d/cedet-1.0pre4.el")
;; . -> :: 자동완성 작동되도록하는 것
;; 기본값은 비활성이고 C-S-RET 로 토글할수 있다.
(load "~/.emacs.d/cedet-supports/semantic-snippets")

(load "~/.emacs.d/cedet-supports/speedbar-snippets")




;;;; == CEDET 자동완성 ==
;; * include된 헤더파일에 있는 키워드도 자동완성에서 쓸수있도록...
;; 바로 아래 것이 있어야 툴팁같은 것이 바로 보였다 사라지지 않는다.
;; cvs 버전에서도 필요한지 테스트 요망
;; (require 'semantic-ia) 
;; (global-semanticdb-minor-mode 1)


;; * 자동완성 기능쓸때 gtkmm 같이 헤더 파일 많을 경우 읽을때 마다 캐시 파일 만드는 것 방지하기 위해 지정해줌
(setq semanticdb-default-save-directory "~/.emacs.d/cedet-supports/#semanticdb.cache#")


;; * 자동완성에 쓸 헤더파일의 경로 적어두는 파일
(load "~/.emacs.d/cedet-supports/semantic-add-system-include")




;; * CEDET semantic 자동완성 관련 바인딩
(global-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
(global-set-key [(control shift return)] 'semantic-ia-complete-tip)

(global-set-key [(control c)(control ?,)] 'global-semantic-idle-completions-mode-toggle-switch)
(global-set-key [(control x)(control ?,)] 'global-semantic-idle-completions-mode-toggle-switch)
;;(global-set-key [(control meta shift return)] 'global-semantic-idle-completions-mode-toggle-switch)

(global-set-key [(control c)(control return)] 'semantic-complete-analyze-inline)

(global-set-key [(shift return)] 'semantic-analyze-possible-completions)

(global-set-key [(control c)(control /)] 'global-semantic-decoration-mode-toggle-switch)
(global-set-key [(control x)(control /)] 'global-semantic-decoration-mode-toggle-switch)
(global-set-key [(control c)(control -)] 'global-semantic-decoration-mode-toggle-switch)




(defun semantic-reload-current-file-for-hook ()
  (interactive)
  (let ((current-file buffer-file-name)
        (current-point (point)) )
    (when (and (stringp current-file)(file-exists-p current-file))
      (save-buffer)
      (kill-buffer)
      (find-file current-file)
      (goto-char current-point)
      ;; (refresh-file)
      )  )   )

(defalias 'cedet-reload-current-file-for-hook 'semantic-reload-current-file-for-hook)
