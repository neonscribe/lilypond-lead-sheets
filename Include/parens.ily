%%http://lsr.di.unimi.it/LSR/Item?id=902

%=> http://lilypond.1069038.n5.nabble.com/parenthesize-groups-of-notes-td501.html
%LSR by Gilles Thibault
%I take the way of how works Parentheses #'stencils from here
%http://lsr.di.unimi.it/LSR/Item?id=564
%It's probably possible to automate a bit more but that is the general idea.

startParenthesis = {
  \once \override Parentheses.stencils = #(lambda (grob)
        (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
          (list (car par-list) point-stencil )))
}

endParenthesis = {
  \once \override Parentheses.stencils = #(lambda (grob)
        (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
          (list point-stencil (cadr par-list))))
} 

%%%%%% Example:
%{
  \override Parentheses.font-size = #5
  \startParenthesis <c \parenthesize c'>
  d' e' f'
  \endParenthesis \parenthesize g'
%} 
