%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Who Walks In When I Walk Out - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Who Walks In When I Walk Out? - Gm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Who Walks In When I Walk Out - Ly - Gm to Em for Eb for Standard"}

%}
