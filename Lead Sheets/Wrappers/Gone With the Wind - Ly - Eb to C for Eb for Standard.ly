%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Gone With the Wind - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Gone With the Wind - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Gone With the Wind - Ly - Eb to C for Eb for Standard"}

%}
