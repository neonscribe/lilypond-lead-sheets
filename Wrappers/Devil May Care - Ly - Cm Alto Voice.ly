%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Teri Thornton Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Devil May Care - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Devil May Care - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Devil May Care - Ly - Cm Alto Voice"}

%}
