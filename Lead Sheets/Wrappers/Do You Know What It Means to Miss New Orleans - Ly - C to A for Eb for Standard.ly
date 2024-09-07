%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Do You Know What It Means to Miss New Orleans - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do You Know What It Means to Miss New Orleans - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Do You Know What It Means to Miss New Orleans - Ly - C to A for Eb for Standard"}

%}
