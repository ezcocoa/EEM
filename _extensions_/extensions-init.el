;; 사각형으로 영역 선택 반전이 가능하도록
(load "~/.emacs.d/_extensions_/rectangle-mark/rect-mark-init")


;; * mark-navigation
;; vim C-i, C-o 과 비슷
(load "~/.emacs.d/_extensions_/mark-navigation/mark-navigation")


;; 가로/세로 분할 윈도우 토글
(load "~/.emacs.d/_extensions_/toggle-window-split/toggle-window-split")


;; 분할된 윈도우의 버퍼 배용 교환
(load "~/.emacs.d/_extensions_/transpose-windows/transpose-windows")


;;;; == screen-lines-mode ==
;; longlines-mode와 비슷하시지만 좀더 직관적임, vim의 gj, gk 와 비슷
(add-to-list 'load-path "~/.emacs.d/_extensions_/screen-lines")
(autoload 'screen-lines-mode "screen-lines"
  "Toggle Screen Lines minor mode for the current buffer." t)
(autoload 'turn-on-screen-lines-mode "screen-lines"
  "Turn on Screen Lines minor mode for the current buffer." t)
(autoload 'turn-off-screen-lines-mode "screen-lines"
  "Turn off Screen Lines minor mode for the current buffer." t)

;; * screen-lines-mode
(global-set-key [(control c)(?\;)(return)] 'screen-lines-mode)