%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/I Want to Be Happy - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Want to Be Happy - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Want to Be Happy - Ly - C Standard"}

%}
