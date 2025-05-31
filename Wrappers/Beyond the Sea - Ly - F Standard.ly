%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Beyond the Sea - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beyond the Sea - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Beyond the Sea - Ly - F Standard"}

%}
