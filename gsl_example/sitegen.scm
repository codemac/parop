(for-ref-set! site.section.page
	      (xml-read (read-ref page 'name #:as "~a.xml")))

;; now we should run the template! :/
(for-ref site.section.page
	 (format #t "page: ~s~%" page)
	 (read-and-eval! (open-file "template.pop" "r")))

(sxml-save! "root.sxml")
