%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Back in Your Own Backyard - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Back in Your Own Backyard - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Back in Your Own Backyard - Ly - G to E for Eb for Standard"}

%}
