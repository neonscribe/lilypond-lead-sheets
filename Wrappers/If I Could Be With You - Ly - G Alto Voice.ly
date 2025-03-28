%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ruth Etting Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/If I Could Be With You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If I Could Be With You - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/If I Could Be With You - Ly - G Alto Voice"}

%}
