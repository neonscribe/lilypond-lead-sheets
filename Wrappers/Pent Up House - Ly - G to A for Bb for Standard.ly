%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Pent Up House - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pent Up House - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Pent Up House - Ly - G to A for Bb for Standard"}

%}
