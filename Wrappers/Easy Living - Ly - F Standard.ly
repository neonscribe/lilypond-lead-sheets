%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Easy Living - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Easy Living - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Easy Living - Ly - F Standard"}

%}
