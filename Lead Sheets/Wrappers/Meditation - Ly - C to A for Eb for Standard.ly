%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Meditation - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Meditation (Meditação) - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Meditation - Ly - C to A for Eb for Standard"}

%}
