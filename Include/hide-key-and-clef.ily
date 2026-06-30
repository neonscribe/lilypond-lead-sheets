\version "2.24.0"

#(define (hide-on-new-page grob)
   (let* ((layout-line (ly:grob-object grob 'axis-group-parent-X))
          (system (ly:grob-object layout-line 'system))
          (rank (ly:grob-property system 'page-break-rank)))
     ;; If page-break-rank is 0, it means it's the first system on a new page.
     (if (and (number? rank) (= rank 0))
         (ly:grob-set-property! grob 'break-visibility #(#f #f #f)))))

\layout {
  \context {
    \Staff
    % Target the Clef and KeySignature grobs after line-breaking calculations finish
    \override Clef.after-line-breaking = #hide-on-new-page
    \override KeySignature.after-line-breaking = #hide-on-new-page
  }
}
