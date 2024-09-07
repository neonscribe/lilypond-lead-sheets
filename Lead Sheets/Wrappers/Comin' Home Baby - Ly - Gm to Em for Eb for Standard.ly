%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Comin' Home Baby - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comin' Home Baby - Gm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Comin' Home Baby - Ly - Gm to Em for Eb for Standard"}

%}
