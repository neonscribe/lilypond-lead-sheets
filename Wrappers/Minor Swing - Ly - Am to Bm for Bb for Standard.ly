%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Minor Swing - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Minor Swing - Am to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Minor Swing - Ly - Am to Bm for Bb for Standard"}

%}
