%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Carmen McRae Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Exactly Like You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Exactly Like You - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Exactly Like You - Ly - F Alto Voice"}

%}
