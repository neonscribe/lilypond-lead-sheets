%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Diana Krall, Jennifer Jason Leigh Key"
whatKey = d
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/Almost Blue - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Almost Blue - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Almost Blue - Ly - Dm Alto Voice"}

%}
