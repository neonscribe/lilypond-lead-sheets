%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Patti Page, Catherine Russell Key"
whatKey = a,
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/My Ideal - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Ideal - A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My Ideal - Ly - A Alto Voice"}

%}
