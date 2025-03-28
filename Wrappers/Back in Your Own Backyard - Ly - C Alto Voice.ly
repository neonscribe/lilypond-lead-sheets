%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Patti Page, Brenda Lee Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Back in Your Own Backyard - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Back in Your Own Backyard - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Back in Your Own Backyard - Ly - C Alto Voice"}

%}
