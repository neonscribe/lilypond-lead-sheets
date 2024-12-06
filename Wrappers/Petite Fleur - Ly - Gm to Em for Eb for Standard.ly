%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Petite Fleur - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Petite Fleur - Gm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Petite Fleur - Ly - Gm to Em for Eb for Standard"}

%}
