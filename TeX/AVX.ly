\version "2.26.0"

    inBook = ##t

    thisPart = ##f
    
    \include "../Wrappers/Chega de Saudade - Ly - D Standard.ly"

    songaaaaaa = \bookpart { \thisPart }
    
    \include "../Wrappers/Darn That Dream - Ly - C Alto Voice.ly"

    songaaaaab = \bookpart { \thisPart }
    
    \include "../Wrappers/Destination Moon - Ly - Eb Alto Voice.ly"

    songaaaaac = \bookpart { \thisPart }
    
    \book {
      \paper {
        tocItemMarkup = \tocItemWithDotsMarkup
        tocTitleMarkup = \markup \huge \larger \larger \larger \column {
          \fill-line { \null "AVB" \null }
          \hspace #1
        }
      }

      \markuplist \table-of-contents
    
    \bookpart { \songaaaaaa }
    
    \bookpart { \songaaaaab }
    
    \bookpart { \songaaaaac }
    
    }
    