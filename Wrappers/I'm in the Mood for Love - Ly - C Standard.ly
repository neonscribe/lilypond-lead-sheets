%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/I'm in the Mood for Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm in the Mood for Love - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I'm in the Mood for Love - Ly - C Standard"}

%}
