%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Jazz Blues in G - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jazz Blues in G - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Jazz Blues in G - Ly - G to E for Eb for Standard"}

%}
