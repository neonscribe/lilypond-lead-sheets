%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/S Wonderful - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{'S Wonderful - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/S Wonderful - Ly - Eb to C for Eb for Standard"}

%}
