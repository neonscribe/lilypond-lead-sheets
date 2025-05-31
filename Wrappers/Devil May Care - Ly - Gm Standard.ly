%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Devil May Care - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Devil May Care - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Devil May Care - Ly - Gm Standard"}

%}
