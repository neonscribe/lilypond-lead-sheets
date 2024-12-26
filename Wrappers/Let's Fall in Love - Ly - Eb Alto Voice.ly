%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Diana Krall, Jeri Southern Key"
whatKey = ef,
whatClef = "treble_8"

\include "../Core/Let's Fall in Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Fall in Love - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Let's Fall in Love - Ly - Eb Alto Voice"}

%}
