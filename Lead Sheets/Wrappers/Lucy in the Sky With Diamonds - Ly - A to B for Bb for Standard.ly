%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Lucy in the Sky With Diamonds - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lucy in the Sky With Diamonds - A to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Lucy in the Sky With Diamonds - Ly - A to B for Bb for Standard"}

%}
