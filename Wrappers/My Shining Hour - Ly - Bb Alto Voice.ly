%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "June Christy, Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/My Shining Hour - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Shining Hour - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My Shining Hour - Ly - Bb Alto Voice"}

%}
