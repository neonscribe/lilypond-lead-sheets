%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Elena's Bossa - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Elena's Bossa - Am to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Elena's Bossa - Ly - Am to Bm for Bb for Standard"}

%}
