%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/In Walked Bud - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In Walked Bud - Fm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/In Walked Bud - Ly - Fm to Dm for Eb for Standard"}

%}
