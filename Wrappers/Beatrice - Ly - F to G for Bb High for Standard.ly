%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb High for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Beatrice - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beatrice - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Beatrice - Ly - F to G for Bb High for Standard"}

%}
