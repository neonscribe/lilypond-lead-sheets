%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = ef
whatClef = "treble_8"
Title = "Spring Is Here"
TempoName = "Ballad [Ella Fitzgerald 1956]"
TempoBPM = 72

\include "../Core/Spring Is Here - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Is Here - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Spring Is Here - Ly - Eb Alto Voice"}

%}
