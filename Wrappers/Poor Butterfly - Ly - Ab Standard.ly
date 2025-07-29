%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan Key"
whatKey = af
whatClef = "treble"

\include "../Core/Poor Butterfly - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Poor Butterfly - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Poor Butterfly - Ly - Ab Standard"}

%}
