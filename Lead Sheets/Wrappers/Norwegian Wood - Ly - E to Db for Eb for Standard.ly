%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = df'
whatClef = "treble"

\include "../Core/Norwegian Wood - Ly Core - E.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Norwegian Wood - E to Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Norwegian Wood - Ly - E to Db for Eb for Standard"}

%}
