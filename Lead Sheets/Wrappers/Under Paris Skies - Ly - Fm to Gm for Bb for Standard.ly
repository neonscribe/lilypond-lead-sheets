%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Under Paris Skies - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Under Paris Skies - Fm to Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Under Paris Skies - Ly - Fm to Gm for Bb for Standard"}

%}
