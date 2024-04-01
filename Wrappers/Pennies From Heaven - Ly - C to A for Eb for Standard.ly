%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Pennies From Heaven - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pennies From Heaven - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Pennies From Heaven - Ly - C to A for Eb for Standard"}

%}
