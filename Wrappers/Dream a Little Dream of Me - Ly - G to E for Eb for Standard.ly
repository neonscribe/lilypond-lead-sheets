%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Dream a Little Dream of Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dream a Little Dream of Me - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Dream a Little Dream of Me - Ly - G to E for Eb for Standard"}

%}
