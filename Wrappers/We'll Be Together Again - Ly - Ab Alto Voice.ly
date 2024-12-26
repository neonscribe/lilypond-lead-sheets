%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "June Christy, Carmen McRae, Ella Fitzgerald, Dianne Reeves Key"
whatKey = af,
whatClef = "treble"

\include "../Core/We'll Be Together Again - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We'll Be Together Again - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/We'll Be Together Again - Ly - Ab Alto Voice"}

%}
