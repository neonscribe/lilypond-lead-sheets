%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Moonglow - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonglow - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Moonglow - Ly - G to A for Bb for Standard"}

%}
