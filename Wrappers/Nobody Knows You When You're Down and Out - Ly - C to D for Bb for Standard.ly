%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d,
whatClef = "treble"

\include "../Core/Nobody Knows You When You're Down and Out - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nobody Knows You When You're Down and Out - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Nobody Knows You When You're Down and Out - Ly - C to D for Bb for Standard"}

%}
