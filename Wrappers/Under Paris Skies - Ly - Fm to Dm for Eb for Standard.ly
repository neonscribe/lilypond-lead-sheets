%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Under Paris Skies - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Under Paris Skies - Fm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Under Paris Skies - Ly - Fm to Dm for Eb for Standard"}

%}
