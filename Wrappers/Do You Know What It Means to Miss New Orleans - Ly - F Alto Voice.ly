%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday, Dinah Shore, Rosemary Clooney Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Do You Know What It Means to Miss New Orleans - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do You Know What It Means to Miss New Orleans - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Do You Know What It Means to Miss New Orleans - Ly - F Alto Voice"}

%}
