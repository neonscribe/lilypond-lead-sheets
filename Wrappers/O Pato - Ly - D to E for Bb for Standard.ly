%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/O Pato - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{O Pato - D to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/O Pato - Ly - D to E for Bb for Standard"}

%}
