%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Jeepers Creepers - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jeepers Creepers - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Jeepers Creepers - Ly - Bb Bass for Standard"}

%}
