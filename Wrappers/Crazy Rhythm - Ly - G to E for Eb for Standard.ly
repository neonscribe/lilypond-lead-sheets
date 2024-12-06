%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Crazy Rhythm - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Crazy Rhythm - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Crazy Rhythm - Ly - G to E for Eb for Standard"}

%}
