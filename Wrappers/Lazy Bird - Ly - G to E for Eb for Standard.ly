%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Lazy Bird - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lazy Bird - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Lazy Bird - Ly - G to E for Eb for Standard"}

%}
