%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/My Ideal - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Ideal - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My Ideal - Ly - Eb Standard"}

%}
