%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Watermelon Man - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Watermelon Man - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Watermelon Man - Ly - F Standard"}

%}
