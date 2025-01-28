%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Anita O'Day, Ella Fitzgerald (solo) Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Can't We Be Friends - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't We Be Friends - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Can't We Be Friends - Ly - Ab Alto Voice"}

%}
