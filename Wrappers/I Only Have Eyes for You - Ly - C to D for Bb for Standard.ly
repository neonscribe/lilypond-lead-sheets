%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/I Only Have Eyes for You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Only Have Eyes for You - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Only Have Eyes for You - Ly - C to D for Bb for Standard"}

%}
