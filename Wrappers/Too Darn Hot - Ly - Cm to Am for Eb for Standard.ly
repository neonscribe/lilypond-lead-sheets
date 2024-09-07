%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Too Darn Hot - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Darn Hot - Cm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Too Darn Hot - Ly - Cm to Am for Eb for Standard"}

%}
