%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Don't Fence Me In - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Fence Me In - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Don't Fence Me In - Ly - F to D for Eb for Standard"}

%}
