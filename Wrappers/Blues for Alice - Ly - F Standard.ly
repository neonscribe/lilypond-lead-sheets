%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Blues for Alice - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues for Alice - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Blues for Alice - Ly - F Standard"}

%}
