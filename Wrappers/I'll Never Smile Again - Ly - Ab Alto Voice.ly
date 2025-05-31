%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Anna Pauline Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/I'll Never Smile Again - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Never Smile Again - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I'll Never Smile Again - Ly - Ab Alto Voice"}

%}
