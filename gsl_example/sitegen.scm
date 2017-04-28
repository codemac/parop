(for-ref-swap
 site.section.page
 (format #t "page: ~s~%" page)
 (sxml-read (read-ref page 'name #:as "~a.sxml")))
(sxml-save! "root.sxml")
