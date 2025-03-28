%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday, Peggy Lee Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Back in Your Own Backyard - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Back in Your Own Backyard - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Back in Your Own Backyard - Ly - Bb Alto Voice"}

%}
