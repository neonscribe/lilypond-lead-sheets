%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Bohemia After Dark - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bohemia After Dark - Gm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Bohemia After Dark - Ly - Gm to Em for Eb for Standard"}

%}
