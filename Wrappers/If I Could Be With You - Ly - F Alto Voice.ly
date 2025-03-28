%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Catherine Russell Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/If I Could Be With You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If I Could Be With You - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/If I Could Be With You - Ly - F Alto Voice"}

%}
