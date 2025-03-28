%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Impressions - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Impressions - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Impressions - Ly - Dm Standard"}

%}
