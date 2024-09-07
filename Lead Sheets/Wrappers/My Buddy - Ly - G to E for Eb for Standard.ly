%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/My Buddy - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Buddy (Waltz) - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/My Buddy - Ly - G to E for Eb for Standard"}

%}
