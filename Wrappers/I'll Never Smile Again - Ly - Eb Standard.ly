%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/I'll Never Smile Again - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Never Smile Again - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I'll Never Smile Again - Ly - Eb Standard"}

%}
