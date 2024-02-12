%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb High for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Easy Living - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Easy Living - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Easy Living - Ly - F to G for Bb High for Standard"}

%}
