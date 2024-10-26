%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/The Lady Is a Tramp - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Lady Is a Tramp - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The Lady Is a Tramp - Ly - C to D for Bb for Standard"}

%}
