%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Carly Simon Key"
whatKey = g,
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/In the Wee Small Hours of the Morning - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In the Wee Small Hours of the Morning - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/In the Wee Small Hours of the Morning - Ly - G Alto Voice"}

%}
