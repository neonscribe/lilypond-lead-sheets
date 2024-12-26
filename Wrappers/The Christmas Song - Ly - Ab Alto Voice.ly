%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day, Patti Page, Ella Fitzgerald, Samara Joy Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/The Christmas Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Christmas Song - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Christmas Song - Ly - Ab Alto Voice"}

%}
