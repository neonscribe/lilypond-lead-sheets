%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Soul Eyes - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Soul Eyes - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Soul Eyes - Ly - Eb Standard"}

%}
