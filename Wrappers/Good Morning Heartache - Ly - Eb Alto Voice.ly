%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Diana Ross, Etta Jones Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/Good Morning Heartache - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Good Morning Heartache - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Good Morning Heartache - Ly - Eb Alto Voice"}

%}
