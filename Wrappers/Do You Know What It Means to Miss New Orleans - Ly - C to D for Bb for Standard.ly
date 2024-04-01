%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Do You Know What It Means to Miss New Orleans - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do You Know What It Means to Miss New Orleans - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Do You Know What It Means to Miss New Orleans - Ly - C to D for Bb for Standard"}

%}
