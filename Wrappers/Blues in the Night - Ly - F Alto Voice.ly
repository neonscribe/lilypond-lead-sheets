%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dinah Shore, Rosemary Clooney Key"
whatKey = f
whatClef = "treble"

femaleSinger = ##t

\include "../Core/Blues in the Night - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues in the Night - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Blues in the Night - Ly - F Alto Voice"}

%}
