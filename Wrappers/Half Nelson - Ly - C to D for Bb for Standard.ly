%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Half Nelson - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Half Nelson - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Half Nelson - Ly - C to D for Bb for Standard"}

%}
