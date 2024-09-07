%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Between the Devil and the Deep Blue Sea - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Between the Devil and the Deep Blue Sea - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Between the Devil and the Deep Blue Sea - Ly - F to D for Eb for Standard"}

%}
