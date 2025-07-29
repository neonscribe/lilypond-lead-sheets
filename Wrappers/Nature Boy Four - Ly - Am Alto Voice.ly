%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Etta Jones Key"
whatKey = a,
whatClef = "treble_8"

\include "../Core/Nature Boy Four - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nature Boy (4/4) - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Nature Boy Four - Ly - Am Alto Voice"}

%}
