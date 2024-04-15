%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Nica's Dream - Ly Core - Bbm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nica's Dream - Bbm to Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Nica's Dream - Ly - Bbm to Gm for Eb for Standard"}

%}
