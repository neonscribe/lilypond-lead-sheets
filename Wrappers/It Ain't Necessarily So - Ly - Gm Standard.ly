%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/It Ain't Necessarily So - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Ain't Necessarily So - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/It Ain't Necessarily So - Ly - Gm Standard"}

%}
