%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Barbra Streisand, Keely Smith Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/The Christmas Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Christmas Song - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Christmas Song - Ly - Bb Alto Voice"}

%}
