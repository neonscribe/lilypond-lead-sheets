%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Annie Ross Key"
whatKey = a,
whatClef = "treble_8"

\include "../Core/Nature Boy Three - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nature Boy (3/4) - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Nature Boy Three - Ly - Am Alto Voice"}

%}
