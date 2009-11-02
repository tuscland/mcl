;; Set the RMCL version resource to the lisp implementation version, rather than the other way around.

  (let ((version-string (application-version-string *application*)))
    (when version-string
      (let ((resh (%null-ptr))
            (curfile (#_CurResFile))
            oldsize)
        (unwind-protect
          (progn 
            (#_UseResFile (#_LMGetCurApRefNum))
            (%setf-macptr resh (#_Get1Resource :|vers| 1))
            (unless (%null-ptr-p resh)
	      (#_LoadResource resh)
              (setq oldsize (#_GetHandleSize resh))              
              (with-dereferenced-handles ((r resh))
                (let* ((len1 (%get-byte r 6))
                       (str1 version-string)
                       (str2 (%get-string r (+ 7 len1)))
                       (delta (- (length str1) len1)))
                  (setq str2 (%str-cat str1 (%substr str2 len1 (length str2))))
                  (let ((newres (#_NewHandle :errchk (+ oldsize delta delta))))
                    (with-dereferenced-handles ((p newres))
                      (dotimes (i 3)
                        (declare (fixnum i))
                        (%put-word p (%get-word r (+ i i)) (+ i i)))
                      (%put-string p str1  6)
                      (%put-string p str2 (+ 7 (length str1))))
                    (list newres :|vers| 1))))))
          (#_UseResFile curfile))))))