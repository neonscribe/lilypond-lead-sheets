%% -*- Mode: LilyPond -*-

\version "2.26.0"

\bookpart {
    \paper {
      % Removes header/footer/page numbers for the blank page
      print-all-headers = ##f
      oddHeaderMarkup = ##f
      evenHeaderMarkup = ##f
      oddFooterMarkup = ##f
      evenFooterMarkup = ##f
    }
    \markup { \null } % An empty markup forces LilyPond to render the page
    \pageBreak
  }

