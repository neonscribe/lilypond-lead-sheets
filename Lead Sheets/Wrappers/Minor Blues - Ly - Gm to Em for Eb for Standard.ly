%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Minor Blues - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Minor Blues (Blues en Mineur) - Gm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Minor Blues - Ly - Gm to Em for Eb for Standard"}

%}
