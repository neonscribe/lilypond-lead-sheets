%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Blue in Green - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue in Green - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Blue in Green - Ly - Dm Standard"}

%}
