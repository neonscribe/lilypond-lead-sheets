%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Recorda-Me - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Recorda-Me - Am to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Recorda-Me - Ly - Am to Bm for Bb for Standard"}

%}
