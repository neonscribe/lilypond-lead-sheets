%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = a,
whatClef = "treble"

\include "../Core/St James Infirmary - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{St. James Infirmary - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/St James Infirmary - Ly - Am Alto Voice"}

%}
