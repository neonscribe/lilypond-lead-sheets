%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Little Boat - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Boat (O Barquinho) - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Little Boat - Ly - Bb Bass for Standard"}

%}
