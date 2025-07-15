%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Mary Martin, Julie Andrews Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/My Favorite Things - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Favorite Things - Ebm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My Favorite Things - Ly - Ebm Alto Voice"}

%}
