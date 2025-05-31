%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Lazy Bird - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lazy Bird - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Lazy Bird - Ly - G to A for Bb for Standard"}

%}
