%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
bassKey = a,
whatClef = "treble"

\include "../Core/Chitlins Con Carne - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Chitlins Con Carne - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Chitlins Con Carne - Ly - C to A for Eb for Standard"}

%}
