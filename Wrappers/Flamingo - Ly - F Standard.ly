%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Flamingo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Flamingo - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Flamingo - Ly - F Standard"}

%}
