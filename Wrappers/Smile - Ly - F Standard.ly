%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Smile - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Smile - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Smile - Ly - F Standard"}

%}
