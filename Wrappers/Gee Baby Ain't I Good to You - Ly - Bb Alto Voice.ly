%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/Gee Baby Ain't I Good to You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Gee Baby, Ain't I Good to You - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Gee Baby Ain't I Good to You - Ly - Bb Alto Voice"}

%}
