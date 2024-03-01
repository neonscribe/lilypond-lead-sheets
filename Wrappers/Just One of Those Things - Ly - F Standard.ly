%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Just One of Those Things - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just One of Those Things - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Just One of Those Things - Ly - F Standard"}

%}
