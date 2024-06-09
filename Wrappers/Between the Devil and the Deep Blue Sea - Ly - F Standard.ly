%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Between the Devil and the Deep Blue Sea - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Between the Devil and the Deep Blue Sea - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Between the Devil and the Deep Blue Sea - Ly - F Standard"}

%}
