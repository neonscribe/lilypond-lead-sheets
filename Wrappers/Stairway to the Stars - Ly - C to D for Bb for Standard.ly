%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Stairway to the Stars - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stairway to the Stars - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Stairway to the Stars - Ly - C to D for Bb for Standard"}

%}
