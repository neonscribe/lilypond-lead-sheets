%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Am I Blue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Am I Blue - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Am I Blue - Ly - F Standard"}

%}
