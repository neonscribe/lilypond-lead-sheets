%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Just Squeeze Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just Squeeze Me - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Just Squeeze Me - Ly - Bb Alto Voice"}

%}
