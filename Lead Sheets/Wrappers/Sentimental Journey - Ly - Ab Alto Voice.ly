%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = af,
whatClef = "treble"

\include "../Core/Sentimental Journey - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sentimental Journey - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Sentimental Journey - Ly - Ab Alto Voice"}

%}
