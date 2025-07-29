%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Carmen McRae Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/My One and Only Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My One and Only Love - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My One and Only Love - Ly - G Alto Voice"}

%}
