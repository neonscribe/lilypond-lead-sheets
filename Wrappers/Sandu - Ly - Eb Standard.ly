%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Sandu - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sandu - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Sandu - Ly - Eb Standard"}

%}
