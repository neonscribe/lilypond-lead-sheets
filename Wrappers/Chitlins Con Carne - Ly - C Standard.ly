%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
bassKey = c
whatClef = "treble"

\include "../Core/Chitlins Con Carne - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Chitlins Con Carne - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Chitlins Con Carne - Ly - C Standard"}

%}
