%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Airegin - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Airegin - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Airegin - Ly - Fm Standard"}

%}
