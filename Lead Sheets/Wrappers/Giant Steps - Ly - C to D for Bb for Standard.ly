%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Giant Steps - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Giant Steps - for Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Giant Steps - Ly - C to D for Bb for Standard"}

%}
