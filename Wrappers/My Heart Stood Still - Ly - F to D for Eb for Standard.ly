%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/My Heart Stood Still - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Heart Stood Still - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/My Heart Stood Still - Ly - F to D for Eb for Standard"}

%}
