%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Do You Know What It Means to Miss New Orleans - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do You Know What It Means to Miss New Orleans - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Do You Know What It Means to Miss New Orleans - Ly - C Standard"}

%}
