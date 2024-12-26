%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Easier Key"
whatKey = a
whatClef = "treble"

bassKey = a,

\include "../Core/Red Clay - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Red Clay - Cm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Red Clay - Ly - Cm to Am for Eb for Standard"}

%}
