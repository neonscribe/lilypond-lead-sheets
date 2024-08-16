%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/True Love - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{True Love - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/True Love - Ly - G Standard"}

%}
