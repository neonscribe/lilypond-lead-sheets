%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = f,
whatClef = "treble"

\include "../Core/I Only Have Eyes for You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Only Have Eyes for You - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Only Have Eyes for You - Ly - F Alto Voice"}

%}
