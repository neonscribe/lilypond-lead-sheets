%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
bassKey = a,
whatClef = "treble"

\include "../Core/Sugar - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sugar - Cm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Sugar - Ly - Cm to Am for Eb for Standard"}

%}
