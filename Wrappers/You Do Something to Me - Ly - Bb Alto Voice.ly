%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/You Do Something to Me - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Do Something to Me - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/You Do Something to Me - Ly - Bb Alto Voice"}

%}
