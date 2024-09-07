%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Whisper Not - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Whisper Not - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Whisper Not - Ly - Cm Standard"}

%}
