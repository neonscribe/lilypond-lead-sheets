%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan, Dakota Staton Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/When Lights Are Low - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When Lights Are Low - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/When Lights Are Low - Ly - Bb Alto Voice"}

%}
