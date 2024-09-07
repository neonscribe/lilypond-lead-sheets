%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d,
whatClef = "treble"

\include "../Core/Too Darn Hot - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Darn Hot - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Too Darn Hot - Ly - Cm to Dm for Bb for Standard"}

%}
