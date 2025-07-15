%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan, Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Spring Will Be a Little Late This Year - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Will Be a Little Late This Year - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Spring Will Be a Little Late This Year - Ly - Bb Alto Voice"}

%}
