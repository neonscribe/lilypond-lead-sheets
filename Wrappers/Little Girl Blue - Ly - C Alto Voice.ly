%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald, Anita O'Day Key"
whatKey = c
whatClef = "treble"

\include "../Core/Little Girl Blue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Girl Blue - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Little Girl Blue - Ly - C Alto Voice"}

%}
