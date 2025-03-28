%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Get Happy - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Get Happy - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Get Happy - Ly - F Standard"}

%}
