%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday, Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Moanin' Low - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moanin' Low - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Moanin' Low - Ly - Bb Alto Voice"}

%}
