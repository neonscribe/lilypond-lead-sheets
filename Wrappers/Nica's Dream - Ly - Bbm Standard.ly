%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Nica's Dream - Ly Core - Bbm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nica's Dream - Bbm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Nica's Dream - Ly - Bbm Standard"}

%}
