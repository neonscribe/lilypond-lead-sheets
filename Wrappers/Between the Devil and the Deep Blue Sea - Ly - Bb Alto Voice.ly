%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Between the Devil and the Deep Blue Sea - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Between the Devil and the Deep Blue Sea - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Between the Devil and the Deep Blue Sea - Ly - Bb Alto Voice"}

%}
