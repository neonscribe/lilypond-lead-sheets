%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Beatrice - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beatrice - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Beatrice - Ly - F Standard"}

%}
