%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/502 Blues - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{502 Blues - Am to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/502 Blues - Ly - Am to Bm for Bb for Standard"}

%}
