%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Too Marvelous for Words - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Marvelous for Words - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Too Marvelous for Words - Ly - G to A for Bb for Standard"}

%}
