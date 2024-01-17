%{
{ 
  \startParenthesis c' 
  d' e' f' 
  \endParenthesis g' 
}
%}


#(define ((my-stencils start) grob) 
(let* ((par-list (parentheses-item::calc-parenthesis-stencils grob)) 
        (null-par (grob-interpret-markup grob (markup #:null)))) 
  (if start 
     (list (car par-list) null-par) 
     (list null-par (cadr par-list))))) 

startParenthesis = #(define-music-function (parser location note) 
(ly:music?) 
"Add an opened parenthesis to the left of `note" 
#{ 
  %% \once \override ParenthesesItem.stencils = #(my-stencils #t) 
  \parenthesize $note 
#}) 

endParenthesis = #(define-music-function (parser location note) (ly:music?) 
"Add a closed parenthesis to the right of `note" 
#{ 
  %% \once \override ParenthesesItem.stencils = #(my-stencils #f) 
  \parenthesize $note 
#}) 


