%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Sunny - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sunny - Am to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Sunny - Ly - Am to Bm for Bb for Standard"}

%}
