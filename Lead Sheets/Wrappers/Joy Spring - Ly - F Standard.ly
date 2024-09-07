%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Joy Spring - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Joy Spring - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Joy Spring - Ly - F Standard"}

%}
