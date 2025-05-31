%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Inner Urge - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Inner Urge - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Inner Urge - Ly - C to A for Eb for Standard"}

%}
