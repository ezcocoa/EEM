;; * 자동완성에 쓸 헤더파일이 있는 경로
;;너무 많은 헤더파일이 있으면 느려진다.
(when linux-p
  ;; (semantic-add-system-include "/usr/include/c++/4.2" 'c++-mode)
  ;; (semantic-add-system-include "/usr/include/glibmm-2.4" 'c++-mode)
  ;; (semantic-add-system-include "/usr/include/gdkmm-2.4" 'c++-mode)
  ;; (semantic-add-system-include "/usr/include/gtkmm-2.4/gtkmm" 'c++-mode)
  (semantic-add-system-include "/usr/include/gtkmm-2.4/" 'c++-mode) )

(when mswin-p
  ;; (semantic-add-system-include "C:/Program Files/Microsoft Visual Studio .NET 2003/Vc7/include" 'c++-mode)
  ;; (semantic-add-system-include "C:/Program Files/Microsoft Visual Studio .NET 2003/Vc7/PlatformSDK/Include" 'c++-mode)
  (semantic-add-system-include "C:/Program Files/Microsoft Visual Studio .NET 2003/Vc7/atlmfc/include" 'c++-mode)
  ;; (semantic-add-system-include "C:/_GNU_/gtkmm/include/glibmm-2.4" 'c++-mode)
  ;; (semantic-add-system-include "C:/_GNU_/gtkmm/include/gdkmm-2.4" 'c++-mode)
  (semantic-add-system-include "C:/_GNU_/gtkmm/include/gtkmm-2.4" 'c++-mode) )
