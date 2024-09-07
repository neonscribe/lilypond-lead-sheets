%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/I Had the Craziest Dream - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Had the Craziest Dream - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Had the Craziest Dream - Ly - C Standard"}

%}
