%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/I Surrender Dear - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Surrender, Dear - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Surrender Dear - Ly - C to D for Bb for Standard"}

%}
