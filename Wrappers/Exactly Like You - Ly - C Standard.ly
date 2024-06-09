%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Exactly Like You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Exactly Like You - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Exactly Like You - Ly - C Standard"}

%}
