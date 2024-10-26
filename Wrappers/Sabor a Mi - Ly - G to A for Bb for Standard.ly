%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Sabor a Mi - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sabor a Mí - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Sabor a Mi - Ly - G to A for Bb for Standard"}

%}
