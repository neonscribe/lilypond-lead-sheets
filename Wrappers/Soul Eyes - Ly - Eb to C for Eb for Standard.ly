%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Soul Eyes - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Soul Eyes - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Soul Eyes - Ly - Eb to C for Eb for Standard"}

%}
