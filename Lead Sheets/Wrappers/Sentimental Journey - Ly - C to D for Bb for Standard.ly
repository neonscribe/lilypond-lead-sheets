%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Sentimental Journey - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sentimental Journey - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Sentimental Journey - Ly - C to D for Bb for Standard"}

%}
