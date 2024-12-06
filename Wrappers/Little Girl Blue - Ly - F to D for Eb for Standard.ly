%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Little Girl Blue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Girl Blue - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Little Girl Blue - Ly - F to D for Eb for Standard"}

%}
