%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
bassKey = a
whatClef = "treble"

\include "../Core/Strawberry Fields Forever - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Strawberry Fields Forever - A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Strawberry Fields Forever - Ly - A Standard"}

%}
