%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Friend of the Devil - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Friend of the Devil - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Friend of the Devil - Ly - G Standard"}

%}
