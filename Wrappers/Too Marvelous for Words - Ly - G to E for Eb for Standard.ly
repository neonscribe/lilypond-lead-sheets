%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Too Marvelous for Words - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Marvelous for Words - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Too Marvelous for Words - Ly - G to E for Eb for Standard"}

%}
