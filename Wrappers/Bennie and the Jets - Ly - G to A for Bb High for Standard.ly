%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb High for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Bennie and the Jets - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bennie and the Jets - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Bennie and the Jets - Ly - G to A for Bb High for Standard"}

%}
