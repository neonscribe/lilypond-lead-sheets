%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Annette Hanshaw Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/Am I Blue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Am I Blue - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Am I Blue - Ly - Bb Alto Voice"}

%}
