%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Hard to Thrill - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hard to Thrill - Am to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Hard to Thrill - Ly - Am to Bm for Bb for Standard"}

%}
