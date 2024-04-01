%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Freddie Freeloader - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Freddie Freeloader - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Freddie Freeloader - Ly - Bb Bass for Standard"}

%}
