%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Airegin - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Airegin - Fm to Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Airegin - Ly - Fm to Gm for Bb for Standard"}

%}
