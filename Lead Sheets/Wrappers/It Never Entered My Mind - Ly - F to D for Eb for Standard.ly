%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/It Never Entered My Mind - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Never Entered My Mind - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/It Never Entered My Mind - Ly - F to D for Eb for Standard"}

%}
