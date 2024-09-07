%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/My Favorite Things - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Favorite Things - Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My Favorite Things - Ly - Em Standard"}

%}
