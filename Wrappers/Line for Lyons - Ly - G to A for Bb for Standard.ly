%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Line for Lyons - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Line for Lyons - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Line for Lyons - Ly - G to A for Bb for Standard"}

%}
