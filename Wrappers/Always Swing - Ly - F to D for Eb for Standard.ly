%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Always Swing - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Always (4/4) - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Always Swing - Ly - F to D for Eb for Standard"}

%}
