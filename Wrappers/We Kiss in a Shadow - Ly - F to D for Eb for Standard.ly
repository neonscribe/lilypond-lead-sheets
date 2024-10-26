%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/We Kiss in a Shadow - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We Kiss in a Shadow - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/We Kiss in a Shadow - Ly - F to D for Eb for Standard"}

%}
