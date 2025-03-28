%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Back in Your Own Backyard - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Back in Your Own Backyard - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Back in Your Own Backyard - Ly - G Standard"}

%}
