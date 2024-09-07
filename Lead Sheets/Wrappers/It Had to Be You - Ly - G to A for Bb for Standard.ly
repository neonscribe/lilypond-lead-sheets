%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/It Had to Be You - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Had to Be You - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/It Had to Be You - Ly - G to A for Bb for Standard"}

%}
