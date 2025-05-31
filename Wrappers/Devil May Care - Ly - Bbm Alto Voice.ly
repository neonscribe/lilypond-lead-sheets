%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Diana Krall, Rita Reys, Cécile McLorin Salvant Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Devil May Care - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Devil May Care - Bbm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Devil May Care - Ly - Bbm Alto Voice"}

%}
