%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald (with Chick Webb) Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/I Want to Be Happy - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Want to Be Happy - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Want to Be Happy - Ly - F Alto Voice"}

%}
