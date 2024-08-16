%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/True Love - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{True Love - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/True Love - Ly - G to E for Eb for Standard"}

%}
