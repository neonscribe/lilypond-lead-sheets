%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Dinah - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dinah - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Dinah - Ly - G to E for Eb for Standard"}

%}
