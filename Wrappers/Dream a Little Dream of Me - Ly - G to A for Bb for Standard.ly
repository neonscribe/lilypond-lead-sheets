%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Dream a Little Dream of Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dream a Little Dream of Me - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Dream a Little Dream of Me - Ly - G to A for Bb for Standard"}

%}
