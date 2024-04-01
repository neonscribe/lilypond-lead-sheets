%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/S Wonderful - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{'S Wonderful - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/S Wonderful - Ly - Eb Standard"}

%}
