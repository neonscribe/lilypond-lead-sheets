%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Singin' in the Rain - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Singin' in the Rain - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Singin' in the Rain - Ly - G to A for Bb for Standard"}

%}
