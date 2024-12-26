%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Patti Page, Sarah Vaughan Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Once in a While - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Once in a While - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Once in a While - Ly - Bb Alto Voice"}

%}
