%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Chris Connor, Sue Raney Key"
whatKey = g,
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/My Ideal - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Ideal - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My Ideal - Ly - G Alto Voice"}

%}
