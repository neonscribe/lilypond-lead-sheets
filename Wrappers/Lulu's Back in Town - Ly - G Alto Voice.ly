%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Brita Koivunen Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Lulu's Back in Town - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lulu's Back in Town - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Lulu's Back in Town - Ly - G Alto Voice"}

%}
