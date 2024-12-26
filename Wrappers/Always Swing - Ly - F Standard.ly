%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Always Swing - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Always (4/4) - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Always Swing - Ly - F Standard"}

%}
