%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Beverly Kenney Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/For All We Know - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{For All We Know - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/For All We Know - Ly - Bb Alto Voice"}

%}
