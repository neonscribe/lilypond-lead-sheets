%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/I Will Wait for You - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Will Wait for You - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Will Wait for You - Ly - Dm Standard"}

%}
