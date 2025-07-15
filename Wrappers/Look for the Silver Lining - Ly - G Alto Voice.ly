%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Etta Jones Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Look for the Silver Lining - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Look for the Silver Lining - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Look for the Silver Lining - Ly - G Alto Voice"}

%}
