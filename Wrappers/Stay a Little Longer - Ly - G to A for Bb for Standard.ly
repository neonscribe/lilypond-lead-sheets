%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Stay a Little Longer - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stay a Little Longer - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Stay a Little Longer - Ly - G to A for Bb for Standard"}

%}
