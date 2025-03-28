%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Spring Can Really Hang You Up the Most - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Can Really Hang You Up the Most - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Spring Can Really Hang You Up the Most - Ly - C Standard"}

%}
