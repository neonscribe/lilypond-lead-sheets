%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Fools Rush In - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fools Rush In - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Fools Rush In - Ly - C to D for Bb for Standard"}

%}
