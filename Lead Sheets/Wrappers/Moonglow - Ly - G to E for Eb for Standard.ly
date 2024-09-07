%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Moonglow - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonglow - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Moonglow - Ly - G to E for Eb for Standard"}

%}
