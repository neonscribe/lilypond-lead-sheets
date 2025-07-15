%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Nina Simone Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/For All We Know - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{For All We Know - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/For All We Know - Ly - G Alto Voice"}

%}
