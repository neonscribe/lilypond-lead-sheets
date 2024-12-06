%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Bennie and the Jets - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bennie and the Jets - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Bennie and the Jets - Ly - G to E for Eb for Standard"}

%}
