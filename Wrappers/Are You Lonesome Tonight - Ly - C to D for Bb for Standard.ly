%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Are You Lonesome Tonight - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Are You Lonesome Tonight - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Are You Lonesome Tonight - Ly - C to D for Bb for Standard"}

%}
