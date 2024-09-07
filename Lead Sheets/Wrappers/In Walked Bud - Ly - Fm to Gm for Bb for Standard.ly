%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/In Walked Bud - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In Walked Bud - Fm to Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/In Walked Bud - Ly - Fm to Gm for Bb for Standard"}

%}
