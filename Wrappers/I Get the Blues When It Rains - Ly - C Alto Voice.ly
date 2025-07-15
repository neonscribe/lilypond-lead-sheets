%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Judy Garland, Lena Horne Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/I Get the Blues When It Rains - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Get the Blues When It Rains - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Get the Blues When It Rains - Ly - C Alto Voice"}

%}
