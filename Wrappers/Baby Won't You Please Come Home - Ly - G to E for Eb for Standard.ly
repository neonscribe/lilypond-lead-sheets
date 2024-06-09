%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Baby Won't You Please Come Home - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Baby, Won't You Please Come Home - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Baby Won't You Please Come Home - Ly - G to E for Eb for Standard"}

%}
