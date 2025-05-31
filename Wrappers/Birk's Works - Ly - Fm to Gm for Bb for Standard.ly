%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Birk's Works - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Birk's Works - Fm to Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Birk's Works - Ly - Fm to Gm for Bb for Standard"}

%}
