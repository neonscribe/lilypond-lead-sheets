%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Deep Purple - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Deep Purple - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Deep Purple - Ly - F to G for Bb for Standard"}

%}
