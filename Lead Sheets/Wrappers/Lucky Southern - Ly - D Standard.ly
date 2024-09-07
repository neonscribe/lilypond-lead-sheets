%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Lucky Southern - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lucky Southern - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Lucky Southern - Ly - D Standard"}

%}
