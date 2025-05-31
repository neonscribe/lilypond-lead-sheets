%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Friend of the Devil - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Friend of the Devil - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Friend of the Devil - Ly - G to E for Eb for Standard"}

%}
