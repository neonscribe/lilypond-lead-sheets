%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Let's Fall in Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Fall in Love - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Let's Fall in Love - Ly - C to D for Bb for Standard"}

%}
