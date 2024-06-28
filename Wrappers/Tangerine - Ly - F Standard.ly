%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Tangerine - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tangerine - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Tangerine - Ly - F Standard"}

%}
