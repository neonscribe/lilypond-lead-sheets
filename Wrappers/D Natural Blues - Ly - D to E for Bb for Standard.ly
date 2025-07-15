%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/D Natural Blues - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{D Natural Blues - D to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/D Natural Blues - Ly - D to E for Bb for Standard"}

%}
