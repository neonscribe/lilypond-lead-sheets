%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Thou Swell - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Thou Swell - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Thou Swell - Ly - Eb Standard"}

%}
