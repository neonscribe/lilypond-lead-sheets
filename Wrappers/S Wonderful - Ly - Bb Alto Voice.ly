%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/S Wonderful - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{'S Wonderful - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/S Wonderful - Ly - Bb Alto Voice"}

%}
