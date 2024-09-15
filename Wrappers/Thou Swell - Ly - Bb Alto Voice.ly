%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Blossom Dearie Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/Thou Swell - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Thou Swell - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Thou Swell - Ly - Bb Alto Voice"}

%}
