%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Nobody Knows You When You're Down and Out - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nobody Knows You When You're Down and Out - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Nobody Knows You When You're Down and Out - Ly - C to A for Eb for Standard"}

%}
