%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Taking a Chance on Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Taking a Chance on Love - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Taking a Chance on Love - Ly - C to D for Bb for Standard"}

%}
