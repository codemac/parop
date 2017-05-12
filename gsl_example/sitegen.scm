(use-modules (ice-9 eval-string))

(for! site.section.page
      (xml-read (read-ref page 'name #:as "~a.xml")))

;; now we should run the template! :/
(for site.section.page
  (format #t "*wrapped-e*: ~s~%" *wrapped-e*)
  (let* ((iport (open-file "template.pop" "r"))
	 (exp (read-all iport)))
    (local-eval exp *wrapped-e*)
    (close-port iport)))

(sxml-save! "root.sxml")
