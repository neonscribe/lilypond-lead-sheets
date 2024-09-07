%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = b
bassKey = b
whatClef = "treble"

\include "../Core/Strawberry Fields Forever - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Strawberry Fields Forever - A to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Strawberry Fields Forever - Ly - A to B for Bb for Standard"}

%}
