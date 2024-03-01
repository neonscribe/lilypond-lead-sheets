%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Dinah - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dinah - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Dinah - Ly - G to A for Bb for Standard"}

%}
