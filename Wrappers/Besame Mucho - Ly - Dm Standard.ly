%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Besame Mucho - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Besame Mucho - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Besame Mucho - Ly - Dm Standard"}

%}
