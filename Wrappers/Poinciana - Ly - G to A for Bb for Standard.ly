%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Poinciana - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Poinciana - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Poinciana - Ly - G to A for Bb for Standard"}

%}
