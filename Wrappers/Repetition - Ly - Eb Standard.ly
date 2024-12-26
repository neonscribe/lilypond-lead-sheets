%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Repetition - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Repetition - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Repetition - Ly - Eb Standard"}

%}