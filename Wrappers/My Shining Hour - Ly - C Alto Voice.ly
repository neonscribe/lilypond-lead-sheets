%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eugenie Baird (with Glen Gray and the Casa Loma Orchestra) Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/My Shining Hour - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Shining Hour - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My Shining Hour - Ly - C Alto Voice"}

%}
