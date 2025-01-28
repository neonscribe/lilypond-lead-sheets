%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Just Squeeze Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just Squeeze Me - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Just Squeeze Me - Ly - F to D for Eb for Standard"}

%}
