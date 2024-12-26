%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Day by Day - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Day by Day - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Day by Day - Ly - G to A for Bb for Standard"}

%}
