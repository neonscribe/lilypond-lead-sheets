%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Annie Ross Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/This Time the Dream's on Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{This Time the Dream's on Me - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/This Time the Dream's on Me - Ly - Bb Alto Voice"}

%}
