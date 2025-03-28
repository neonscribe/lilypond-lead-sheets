%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/In the Wee Small Hours of the Morning - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In the Wee Small Hours of the Morning - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/In the Wee Small Hours of the Morning - Ly - C to D for Bb for Standard"}

%}
