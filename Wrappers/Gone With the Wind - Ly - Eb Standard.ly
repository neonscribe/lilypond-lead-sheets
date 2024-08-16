%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Gone With the Wind - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Gone With the Wind - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Gone With the Wind - Ly - Eb Standard"}

%}
