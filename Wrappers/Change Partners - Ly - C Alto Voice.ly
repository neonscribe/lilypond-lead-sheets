%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Wesla Whitfield Key"
whatKey = c
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/Change Partners - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Change Partners - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Change Partners - Ly - C Alto Voice"}

%}
