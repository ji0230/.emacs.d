;;Org Mode
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)
;;org todo keywords
(setq org-todo-keywords '((sequence "TODO(t)" "|" "DONE(d)")
                          (sequence "QUESTION(q)" "TASK(T)" "|" "ANSWER" "UPDATED" "REVIEWED(r)" "KONWLEDGE(k)" "NOTE(n)" "FINISHED(f)" "有点高超(g)")
                          (sequence "TO SHARE(s)" "BUG(b)" "KNOWNCAUSE(k)" "WARN(w)" "|" "FIXED(f)")
                          (sequence "|" "CLOSED(c)" "CANCELED(C)")))
(add-hook 'message-mode-hook 'turn-on-orgstruct)
(add-hook 'message-mode-hook 'turn-on-orgstruct++)
;;---------Org-mode export html with mathjax-----
;(setq org-html-mathjax-options '((path "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")))
;;or use in a sigle file with org-mode  #+HTML_MATHJAX: align:"left" mathml:t path:""
;;set the C-c . of the command org-time-stamp in a consistent time format
;;(setq-default org-display-custom-times 't)
;;(setq org-time-stamp-custom-formats '("<%Y-%m-%d %a>" . "<%Y-%m-%d %a %H:%M>"))
;;set the org babel languages
(org-babel-do-load-languages
      'org-babel-load-languages
      '((emacs-lisp . t)
        (java .t)
        (shell . t)
        (calc . t)
        (latex . t)
        (plantuml . t)))
(setq org-plantuml-jar-path "~/.emacs.d/resources/plantuml.jar")
;;log closing item
(setq org-log-done 'time)
;;record an additional note together with the clock-out timestamp
(setq org-log-note-clock-out t)
;;Ignore section-numbers when export to other files
(setq org-export-with-section-numbers nil)
;;; https://emacs.stackexchange.com/questions/17796/emacs-tea-time-is-supposed-to-be-integrated-in-org-mode-but-apparently-its-no/17849#17849
;;; https://emacs.stackexchange.com/questions/34746/how-to-get-an-audible-feedback-when-the-current-task-is-overrun/34750
;;(setq org-clock-sound "~/.emacs.d/alarm.wav")
(setq org-html-preamble-format '(("en" "<a class=\"a_1\" href=\"\\\">首页</a><a class=\"a_none\">需求决定一切，一切问题都是需求问题</a>")))
(setq org-html-postamble t)
(setq org-html-postamble-format '(("en" "<p class=\"creator\">Generated by %c</p>")))
(provide 'init-org)
